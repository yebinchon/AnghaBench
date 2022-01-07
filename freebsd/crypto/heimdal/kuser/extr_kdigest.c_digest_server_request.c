
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct digest_server_request_options {int kerberos_realm_string; int * client_response_string; int * opaque_string; int client_nonce_string; int * server_nonce_string; int username_string; int * type_string; int * server_identifier_string; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_digest ;
struct TYPE_4__ {scalar_t__ length; int data; } ;
typedef TYPE_1__ krb5_data ;


 int context ;
 int errx (int,char*) ;
 int free (char*) ;
 int hex_encode (int ,scalar_t__,char**) ;
 int id ;
 int krb5_data_free (TYPE_1__*) ;
 scalar_t__ krb5_digest_alloc (int ,int *) ;
 int krb5_digest_free (int ) ;
 char* krb5_digest_get_rsp (int ,int ) ;
 scalar_t__ krb5_digest_get_session_key (int ,int ,TYPE_1__*) ;
 scalar_t__ krb5_digest_rep_get_status (int ,int ) ;
 scalar_t__ krb5_digest_request (int ,int ,int ,int ) ;
 scalar_t__ krb5_digest_set_client_nonce (int ,int ,int ) ;
 scalar_t__ krb5_digest_set_identifier (int ,int ,int *) ;
 scalar_t__ krb5_digest_set_opaque (int ,int ,int *) ;
 scalar_t__ krb5_digest_set_responseData (int ,int ,int *) ;
 scalar_t__ krb5_digest_set_server_nonce (int ,int ,int *) ;
 scalar_t__ krb5_digest_set_type (int ,int ,int *) ;
 scalar_t__ krb5_digest_set_username (int ,int ,int ) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 int printf (char*,...) ;
 scalar_t__ strcasecmp (int *,char*) ;

int
digest_server_request(struct digest_server_request_options *opt,
        int argc, char **argv)
{
    krb5_error_code ret;
    krb5_digest digest;
    const char *status, *rsp;
    krb5_data session_key;

    if (opt->server_nonce_string == ((void*)0))
 errx(1, "server nonce missing");
    if (opt->type_string == ((void*)0))
 errx(1, "type missing");
    if (opt->opaque_string == ((void*)0))
 errx(1, "opaque missing");
    if (opt->client_response_string == ((void*)0))
 errx(1, "client response missing");

    ret = krb5_digest_alloc(context, &digest);
    if (ret)
 krb5_err(context, 1, ret, "digest_alloc");

    if (strcasecmp(opt->type_string, "CHAP") == 0) {
 if (opt->server_identifier_string == ((void*)0))
     errx(1, "server identifier missing");

 ret = krb5_digest_set_identifier(context, digest,
      opt->server_identifier_string);
 if (ret)
     krb5_err(context, 1, ret, "krb5_digest_set_type");
    }

    ret = krb5_digest_set_type(context, digest, opt->type_string);
    if (ret)
 krb5_err(context, 1, ret, "krb5_digest_set_type");

    ret = krb5_digest_set_username(context, digest, opt->username_string);
    if (ret)
 krb5_err(context, 1, ret, "krb5_digest_set_username");

    ret = krb5_digest_set_server_nonce(context, digest,
           opt->server_nonce_string);
    if (ret)
 krb5_err(context, 1, ret, "krb5_digest_set_server_nonce");

    if(opt->client_nonce_string) {
 ret = krb5_digest_set_client_nonce(context, digest,
        opt->client_nonce_string);
 if (ret)
     krb5_err(context, 1, ret, "krb5_digest_set_client_nonce");
    }


    ret = krb5_digest_set_opaque(context, digest, opt->opaque_string);
    if (ret)
 krb5_err(context, 1, ret, "krb5_digest_set_opaque");

    ret = krb5_digest_set_responseData(context, digest,
           opt->client_response_string);
    if (ret)
 krb5_err(context, 1, ret, "krb5_digest_set_responseData");

    ret = krb5_digest_request(context, digest,
         opt->kerberos_realm_string, id);
    if (ret)
 krb5_err(context, 1, ret, "krb5_digest_request");

    status = krb5_digest_rep_get_status(context, digest) ? "ok" : "failed";
    rsp = krb5_digest_get_rsp(context, digest);

    printf("status=%s\n", status);
    if (rsp)
 printf("rsp=%s\n", rsp);
    printf("tickets=no\n");

    ret = krb5_digest_get_session_key(context, digest, &session_key);
    if (ret)
 krb5_err(context, 1, ret, "krb5_digest_get_session_key");

    if (session_key.length) {
 char *key;
 hex_encode(session_key.data, session_key.length, &key);
 if (key == ((void*)0))
     krb5_errx(context, 1, "hex_encode");
 krb5_data_free(&session_key);
 printf("session-key=%s\n", key);
 free(key);
    }

    krb5_digest_free(digest);

    return 0;
}
