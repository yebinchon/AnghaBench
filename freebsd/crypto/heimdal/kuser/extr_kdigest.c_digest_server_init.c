
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct digest_server_init_options {char* type_string; int kerberos_realm_string; int cb_value_string; int cb_type_string; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_digest ;


 int context ;
 int id ;
 scalar_t__ krb5_digest_alloc (int ,int *) ;
 int krb5_digest_free (int ) ;
 char* krb5_digest_get_identifier (int ,int ) ;
 char* krb5_digest_get_opaque (int ,int ) ;
 char* krb5_digest_get_server_nonce (int ,int ) ;
 scalar_t__ krb5_digest_init_request (int ,int ,int ,int ) ;
 scalar_t__ krb5_digest_set_server_cb (int ,int ,int ,int ) ;
 scalar_t__ krb5_digest_set_type (int ,int ,char*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int printf (char*,char const*) ;

int
digest_server_init(struct digest_server_init_options *opt,
     int argc, char ** argv)
{
    krb5_error_code ret;
    krb5_digest digest;

    ret = krb5_digest_alloc(context, &digest);
    if (ret)
 krb5_err(context, 1, ret, "digest_alloc");

    ret = krb5_digest_set_type(context, digest, opt->type_string);
    if (ret)
 krb5_err(context, 1, ret, "krb5_digest_set_type");

    if (opt->cb_type_string && opt->cb_value_string) {
 ret = krb5_digest_set_server_cb(context, digest,
     opt->cb_type_string,
     opt->cb_value_string);
 if (ret)
     krb5_err(context, 1, ret, "krb5_digest_set_server_cb");
    }
    ret = krb5_digest_init_request(context,
       digest,
       opt->kerberos_realm_string,
       id);
    if (ret)
 krb5_err(context, 1, ret, "krb5_digest_init_request");

    printf("type=%s\n", opt->type_string);
    printf("server-nonce=%s\n",
    krb5_digest_get_server_nonce(context, digest));
    {
 const char *s = krb5_digest_get_identifier(context, digest);
 if (s)
     printf("identifier=%s\n", s);
    }
    printf("opaque=%s\n", krb5_digest_get_opaque(context, digest));

    krb5_digest_free(digest);

    return 0;
}
