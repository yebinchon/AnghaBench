
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct hx509_generate_private_context {int dummy; } ;
struct certificate_sign_options {int lifetime_string; int * certificate_string; scalar_t__ self_signed_flag; scalar_t__ domain_controller_flag; int path_length_integer; scalar_t__ issue_proxy_flag; scalar_t__ issue_ca_flag; int crl_uri_string; scalar_t__ serial_number_string; int * template_fields_string; int * template_certificate_string; scalar_t__ subject_string; int * certificate_private_key_string; int key_bits_integer; int * generate_key_string; int req_string; int * ca_private_key_string; int * ca_certificate_string; } ;
typedef int spki ;
typedef int hx509_request ;
typedef int hx509_query ;
typedef scalar_t__ hx509_private_key ;
typedef int * hx509_name ;
typedef int * hx509_certs ;
typedef int * hx509_cert ;
typedef int hx509_ca_tbs ;
typedef int heim_integer ;
struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_9__ {TYPE_1__ subjectPublicKey; } ;
typedef TYPE_2__ SubjectPublicKeyInfo ;


 int HX509_CERTS_CREATE ;
 int HX509_QUERY_OPTION_KU_KEYCERTSIGN ;
 int HX509_QUERY_OPTION_PRIVATE_KEY ;
 int _hx509_cert_assign_key (int *,scalar_t__) ;
 int _hx509_generate_private_key (int ,struct hx509_generate_private_context*,scalar_t__*) ;
 int _hx509_generate_private_key_bits (int ,struct hx509_generate_private_context*,int ) ;
 int _hx509_generate_private_key_free (struct hx509_generate_private_context**) ;
 int _hx509_generate_private_key_init (int ,int *,struct hx509_generate_private_context**) ;
 int _hx509_generate_private_key_is_ca (int ,struct hx509_generate_private_context*) ;
 int _hx509_request_parse (int ,int ,int *) ;
 int asn1_oid_id_pkcs1_rsaEncryption ;
 int context ;
 int der_free_heim_integer (int *) ;
 int der_parse_hex_heim_integer (scalar_t__,int *) ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int eval_types (int ,int ,struct certificate_sign_options*) ;
 int free_SubjectPublicKeyInfo (TYPE_2__*) ;
 int hx509_ca_sign (int ,int ,int *,int **) ;
 int hx509_ca_sign_self (int ,int ,scalar_t__,int **) ;
 int hx509_ca_tbs_add_crl_dp_uri (int ,int ,int ,int *) ;
 int hx509_ca_tbs_free (int *) ;
 int hx509_ca_tbs_init (int ,int *) ;
 int hx509_ca_tbs_set_ca (int ,int ,int ) ;
 int hx509_ca_tbs_set_domaincontroller (int ,int ) ;
 int hx509_ca_tbs_set_notAfter_lifetime (int ,int ,int) ;
 int hx509_ca_tbs_set_proxy (int ,int ,int ) ;
 int hx509_ca_tbs_set_serialnumber (int ,int ,int *) ;
 int hx509_ca_tbs_set_spki (int ,int ,TYPE_2__*) ;
 int hx509_ca_tbs_set_subject (int ,int ,int *) ;
 int hx509_ca_tbs_set_template (int ,int ,int,int *) ;
 int hx509_ca_tbs_template_units () ;
 int hx509_cert_free (int *) ;
 int hx509_certs_add (int ,int *,int *) ;
 int hx509_certs_find (int ,int *,int *,int **) ;
 int hx509_certs_free (int **) ;
 int hx509_certs_init (int ,int *,int ,int *,int **) ;
 int hx509_certs_store (int ,int *,int ,int *) ;
 int hx509_err (int ,int,int,char*,...) ;
 int hx509_get_one_cert (int ,int *,int **) ;
 int hx509_name_free (int **) ;
 int hx509_parse_name (int ,scalar_t__,int **) ;
 int hx509_private_key2SPKI (int ,scalar_t__,TYPE_2__*) ;
 int hx509_private_key_free (scalar_t__*) ;
 int hx509_query_alloc (int ,int **) ;
 int hx509_query_free (int ,int *) ;
 int hx509_query_match_option (int *,int ) ;
 int hx509_request_free (int *) ;
 int hx509_request_get_SubjectPublicKeyInfo (int ,int ,TYPE_2__*) ;
 int hx509_request_get_name (int ,int ,int **) ;
 int memset (TYPE_2__*,int ,int) ;
 int parse_time (int,char*) ;
 int parse_units (int *,int ,char*) ;
 int read_private_key (int *,scalar_t__*) ;

int
hxtool_ca(struct certificate_sign_options *opt, int argc, char **argv)
{
    int ret;
    hx509_ca_tbs tbs;
    hx509_cert signer = ((void*)0), cert = ((void*)0);
    hx509_private_key private_key = ((void*)0);
    hx509_private_key cert_key = ((void*)0);
    hx509_name subject = ((void*)0);
    SubjectPublicKeyInfo spki;
    int delta = 0;

    memset(&spki, 0, sizeof(spki));

    if (opt->ca_certificate_string == ((void*)0) && !opt->self_signed_flag)
 errx(1, "--ca-certificate argument missing (not using --self-signed)");
    if (opt->ca_private_key_string == ((void*)0) && opt->generate_key_string == ((void*)0) && opt->self_signed_flag)
 errx(1, "--ca-private-key argument missing (using --self-signed)");
    if (opt->certificate_string == ((void*)0))
 errx(1, "--certificate argument missing");

    if (opt->template_certificate_string) {
 if (opt->template_fields_string == ((void*)0))
     errx(1, "--template-certificate not no --template-fields");
    }

    if (opt->lifetime_string) {
 delta = parse_time(opt->lifetime_string, "day");
 if (delta < 0)
     errx(1, "Invalid lifetime: %s", opt->lifetime_string);
    }

    if (opt->ca_certificate_string) {
 hx509_certs cacerts = ((void*)0);
 hx509_query *q;

 ret = hx509_certs_init(context, opt->ca_certificate_string, 0,
          ((void*)0), &cacerts);
 if (ret)
     hx509_err(context, 1, ret,
        "hx509_certs_init: %s", opt->ca_certificate_string);

 ret = hx509_query_alloc(context, &q);
 if (ret)
     errx(1, "hx509_query_alloc: %d", ret);

 hx509_query_match_option(q, HX509_QUERY_OPTION_PRIVATE_KEY);
 if (!opt->issue_proxy_flag)
     hx509_query_match_option(q, HX509_QUERY_OPTION_KU_KEYCERTSIGN);

 ret = hx509_certs_find(context, cacerts, q, &signer);
 hx509_query_free(context, q);
 hx509_certs_free(&cacerts);
 if (ret)
     hx509_err(context, 1, ret, "no CA certificate found");
    } else if (opt->self_signed_flag) {
 if (opt->generate_key_string == ((void*)0)
     && opt->ca_private_key_string == ((void*)0))
     errx(1, "no signing private key");

 if (opt->req_string)
     errx(1, "can't be self-signing and have a request at the same time");
    } else
 errx(1, "missing ca key");

    if (opt->ca_private_key_string) {

 ret = read_private_key(opt->ca_private_key_string, &private_key);
 if (ret)
     err(1, "read_private_key");

 ret = hx509_private_key2SPKI(context, private_key, &spki);
 if (ret)
     errx(1, "hx509_private_key2SPKI: %d\n", ret);

 if (opt->self_signed_flag)
     cert_key = private_key;
    }

    if (opt->req_string) {
 hx509_request req;

 ret = _hx509_request_parse(context, opt->req_string, &req);
 if (ret)
     hx509_err(context, 1, ret, "parse_request: %s", opt->req_string);
 ret = hx509_request_get_name(context, req, &subject);
 if (ret)
     hx509_err(context, 1, ret, "get name");
 ret = hx509_request_get_SubjectPublicKeyInfo(context, req, &spki);
 if (ret)
     hx509_err(context, 1, ret, "get spki");
 hx509_request_free(&req);
    }

    if (opt->generate_key_string) {
 struct hx509_generate_private_context *keyctx;

 ret = _hx509_generate_private_key_init(context,
            &asn1_oid_id_pkcs1_rsaEncryption,
            &keyctx);
 if (ret)
     hx509_err(context, 1, ret, "generate private key");

 if (opt->issue_ca_flag)
     _hx509_generate_private_key_is_ca(context, keyctx);

 if (opt->key_bits_integer)
     _hx509_generate_private_key_bits(context, keyctx,
          opt->key_bits_integer);

 ret = _hx509_generate_private_key(context, keyctx,
       &cert_key);
 _hx509_generate_private_key_free(&keyctx);
 if (ret)
     hx509_err(context, 1, ret, "generate private key");

 ret = hx509_private_key2SPKI(context, cert_key, &spki);
 if (ret)
     errx(1, "hx509_private_key2SPKI: %d\n", ret);

 if (opt->self_signed_flag)
     private_key = cert_key;
    }

    if (opt->certificate_private_key_string) {
 ret = read_private_key(opt->certificate_private_key_string, &cert_key);
 if (ret)
     err(1, "read_private_key for certificate");
    }

    if (opt->subject_string) {
 if (subject)
     hx509_name_free(&subject);
 ret = hx509_parse_name(context, opt->subject_string, &subject);
 if (ret)
     hx509_err(context, 1, ret, "hx509_parse_name");
    }





    ret = hx509_ca_tbs_init(context, &tbs);
    if (ret)
 hx509_err(context, 1, ret, "hx509_ca_tbs_init");

    if (opt->template_certificate_string) {
 hx509_cert template;
 hx509_certs tcerts;
 int flags;

 ret = hx509_certs_init(context, opt->template_certificate_string, 0,
          ((void*)0), &tcerts);
 if (ret)
     hx509_err(context, 1, ret,
        "hx509_certs_init: %s", opt->template_certificate_string);

 ret = hx509_get_one_cert(context, tcerts, &template);

 hx509_certs_free(&tcerts);
 if (ret)
     hx509_err(context, 1, ret, "no template certificate found");

 flags = parse_units(opt->template_fields_string,
       hx509_ca_tbs_template_units(), "");

 ret = hx509_ca_tbs_set_template(context, tbs, flags, template);
 if (ret)
     hx509_err(context, 1, ret, "hx509_ca_tbs_set_template");

 hx509_cert_free(template);
    }

    if (opt->serial_number_string) {
 heim_integer serialNumber;

 ret = der_parse_hex_heim_integer(opt->serial_number_string,
      &serialNumber);
 if (ret)
     err(1, "der_parse_hex_heim_integer");
 ret = hx509_ca_tbs_set_serialnumber(context, tbs, &serialNumber);
 if (ret)
     hx509_err(context, 1, ret, "hx509_ca_tbs_init");
 der_free_heim_integer(&serialNumber);
    }

    if (spki.subjectPublicKey.length) {
 ret = hx509_ca_tbs_set_spki(context, tbs, &spki);
 if (ret)
     hx509_err(context, 1, ret, "hx509_ca_tbs_set_spki");
    }

    if (subject) {
 ret = hx509_ca_tbs_set_subject(context, tbs, subject);
 if (ret)
     hx509_err(context, 1, ret, "hx509_ca_tbs_set_subject");
    }

    if (opt->crl_uri_string) {
 ret = hx509_ca_tbs_add_crl_dp_uri(context, tbs,
       opt->crl_uri_string, ((void*)0));
 if (ret)
     hx509_err(context, 1, ret, "hx509_ca_tbs_add_crl_dp_uri");
    }

    eval_types(context, tbs, opt);

    if (opt->issue_ca_flag) {
 ret = hx509_ca_tbs_set_ca(context, tbs, opt->path_length_integer);
 if (ret)
     hx509_err(context, 1, ret, "hx509_ca_tbs_set_ca");
    }
    if (opt->issue_proxy_flag) {
 ret = hx509_ca_tbs_set_proxy(context, tbs, opt->path_length_integer);
 if (ret)
     hx509_err(context, 1, ret, "hx509_ca_tbs_set_proxy");
    }
    if (opt->domain_controller_flag) {
 hx509_ca_tbs_set_domaincontroller(context, tbs);
 if (ret)
     hx509_err(context, 1, ret, "hx509_ca_tbs_set_domaincontroller");
    }

    if (delta) {
 ret = hx509_ca_tbs_set_notAfter_lifetime(context, tbs, delta);
 if (ret)
     hx509_err(context, 1, ret, "hx509_ca_tbs_set_notAfter_lifetime");
    }

    if (opt->self_signed_flag) {
 ret = hx509_ca_sign_self(context, tbs, private_key, &cert);
 if (ret)
     hx509_err(context, 1, ret, "hx509_ca_sign_self");
    } else {
 ret = hx509_ca_sign(context, tbs, signer, &cert);
 if (ret)
     hx509_err(context, 1, ret, "hx509_ca_sign");
    }

    if (cert_key) {
 ret = _hx509_cert_assign_key(cert, cert_key);
 if (ret)
     hx509_err(context, 1, ret, "_hx509_cert_assign_key");
    }

    {
 hx509_certs certs;

 ret = hx509_certs_init(context, opt->certificate_string,
          HX509_CERTS_CREATE, ((void*)0), &certs);
 if (ret)
     hx509_err(context, 1, ret, "hx509_certs_init");

 ret = hx509_certs_add(context, certs, cert);
 if (ret)
     hx509_err(context, 1, ret, "hx509_certs_add");

 ret = hx509_certs_store(context, certs, 0, ((void*)0));
 if (ret)
     hx509_err(context, 1, ret, "hx509_certs_store");

 hx509_certs_free(&certs);
    }

    if (subject)
 hx509_name_free(&subject);
    if (signer)
 hx509_cert_free(signer);
    hx509_cert_free(cert);
    free_SubjectPublicKeyInfo(&spki);

    if (private_key != cert_key)
 hx509_private_key_free(&private_key);
    hx509_private_key_free(&cert_key);

    hx509_ca_tbs_free(&tbs);

    return 0;
}
