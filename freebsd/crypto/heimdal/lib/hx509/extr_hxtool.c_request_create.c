
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num_strings; int * strings; } ;
struct TYPE_6__ {int num_strings; int * strings; } ;
struct request_create_options {TYPE_2__ dnsname_strings; TYPE_1__ email_strings; scalar_t__ verbose_flag; scalar_t__ subject_string; int key_bits_integer; int generate_key_string; int key_string; } ;
typedef int key ;
typedef int hx509_request ;
typedef int hx509_private_key ;
typedef int * hx509_name ;
struct TYPE_8__ {int length; int data; } ;
typedef TYPE_3__ heim_octet_string ;
typedef int SubjectPublicKeyInfo ;


 int _hx509_request_add_dns_name (int ,int ,int ) ;
 int _hx509_request_add_email (int ,int ,int ) ;
 int _hx509_request_to_pkcs10 (int ,int ,int ,TYPE_3__*) ;
 int context ;
 int der_free_octet_string (TYPE_3__*) ;
 int errx (int,char*,int) ;
 int free_SubjectPublicKeyInfo (int *) ;
 int get_key (int ,int ,int ,int *) ;
 int hx509_err (int ,int,int,char*) ;
 int hx509_name_free (int **) ;
 int hx509_name_to_string (int *,char**) ;
 int hx509_parse_name (int ,scalar_t__,int **) ;
 int hx509_private_key2SPKI (int ,int ,int *) ;
 int hx509_private_key_free (int *) ;
 int hx509_request_free (int *) ;
 int hx509_request_init (int ,int *) ;
 int hx509_request_set_SubjectPublicKeyInfo (int ,int ,int *) ;
 int hx509_request_set_name (int ,int ,int *) ;
 int memset (int *,int ,int) ;
 int printf (char*,char*) ;
 int rk_dumpdata (char const*,int ,int ) ;

int
request_create(struct request_create_options *opt, int argc, char **argv)
{
    heim_octet_string request;
    hx509_request req;
    int ret, i;
    hx509_private_key signer;
    SubjectPublicKeyInfo key;
    const char *outfile = argv[0];

    memset(&key, 0, sizeof(key));

    get_key(opt->key_string,
     opt->generate_key_string,
     opt->key_bits_integer,
     &signer);

    hx509_request_init(context, &req);

    if (opt->subject_string) {
 hx509_name name = ((void*)0);

 ret = hx509_parse_name(context, opt->subject_string, &name);
 if (ret)
     errx(1, "hx509_parse_name: %d\n", ret);
 hx509_request_set_name(context, req, name);

 if (opt->verbose_flag) {
     char *s;
     hx509_name_to_string(name, &s);
     printf("%s\n", s);
 }
 hx509_name_free(&name);
    }

    for (i = 0; i < opt->email_strings.num_strings; i++) {
 ret = _hx509_request_add_email(context, req,
           opt->email_strings.strings[i]);
 if (ret)
     hx509_err(context, 1, ret, "hx509_request_add_email");
    }

    for (i = 0; i < opt->dnsname_strings.num_strings; i++) {
 ret = _hx509_request_add_dns_name(context, req,
       opt->dnsname_strings.strings[i]);
 if (ret)
     hx509_err(context, 1, ret, "hx509_request_add_dns_name");
    }


    ret = hx509_private_key2SPKI(context, signer, &key);
    if (ret)
 errx(1, "hx509_private_key2SPKI: %d\n", ret);

    ret = hx509_request_set_SubjectPublicKeyInfo(context,
        req,
        &key);
    free_SubjectPublicKeyInfo(&key);
    if (ret)
 hx509_err(context, 1, ret, "hx509_request_set_SubjectPublicKeyInfo");

    ret = _hx509_request_to_pkcs10(context,
       req,
       signer,
       &request);
    if (ret)
 hx509_err(context, 1, ret, "_hx509_request_to_pkcs10");

    hx509_private_key_free(&signer);
    hx509_request_free(&req);

    if (ret == 0)
 rk_dumpdata(outfile, request.data, request.length);
    der_free_octet_string(&request);

    return 0;
}
