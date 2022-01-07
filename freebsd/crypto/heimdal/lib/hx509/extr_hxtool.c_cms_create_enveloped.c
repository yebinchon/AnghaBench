
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct cms_envelope_options {int encryption_type_string; scalar_t__ content_info_flag; int content_type_string; scalar_t__ allow_weak_crypto_flag; int certificate_strings; int pass_strings; } ;
typedef int hx509_query ;
typedef int hx509_lock ;
typedef int hx509_certs ;
typedef int hx509_cert ;
typedef int heim_oid ;
struct TYPE_6__ {int length; int data; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int contentType ;


 int HX509_CMS_EV_ALLOW_WEAK ;
 int HX509_QUERY_OPTION_KU_ENCIPHERMENT ;
 int _hx509_write_file (char*,int ,int ) ;
 int asn1_oid_id_pkcs7_data ;
 int asn1_oid_id_pkcs7_envelopedData ;
 int certs_strings (int ,char*,int ,int ,int *) ;
 int context ;
 int der_free_octet_string (TYPE_1__*) ;
 int der_free_oid (int *) ;
 int err (int,char*,char*,int) ;
 int errx (int,char*,int) ;
 int hx509_cert_free (int ) ;
 int hx509_certs_find (int ,int ,int *,int *) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;
 int hx509_cms_envelope_1 (int ,int,int ,void*,size_t,int const*,int *,TYPE_1__*) ;
 int hx509_cms_wrap_ContentInfo (int *,TYPE_1__*,TYPE_1__*) ;
 int * hx509_crypto_enctype_by_name (int) ;
 int hx509_err (int ,int,int,char*) ;
 int hx509_lock_free (int ) ;
 int hx509_lock_init (int ,int *) ;
 int hx509_query_alloc (int ,int **) ;
 int hx509_query_free (int ,int *) ;
 int hx509_query_match_option (int *,int ) ;
 int lock_strings (int ,int *) ;
 int memset (int *,int ,int) ;
 int parse_oid (int ,int *,int *) ;
 int rk_undumpdata (char*,void**,size_t*) ;
 int rk_xfree (void*) ;

int
cms_create_enveloped(struct cms_envelope_options *opt, int argc, char **argv)
{
    heim_oid contentType;
    heim_octet_string o;
    const heim_oid *enctype = ((void*)0);
    hx509_query *q;
    hx509_certs certs;
    hx509_cert cert;
    int ret;
    size_t sz;
    void *p;
    hx509_lock lock;
    int flags = 0;

    memset(&contentType, 0, sizeof(contentType));

    hx509_lock_init(context, &lock);
    lock_strings(lock, &opt->pass_strings);

    ret = rk_undumpdata(argv[0], &p, &sz);
    if (ret)
 err(1, "map_file: %s: %d", argv[0], ret);

    ret = hx509_certs_init(context, "MEMORY:cert-store", 0, ((void*)0), &certs);
    if (ret) hx509_err(context, 1, ret, "hx509_certs_init: MEMORY");

    certs_strings(context, "store", certs, lock, &opt->certificate_strings);

    if (opt->allow_weak_crypto_flag)
 flags |= HX509_CMS_EV_ALLOW_WEAK;

    if (opt->encryption_type_string) {
 enctype = hx509_crypto_enctype_by_name(opt->encryption_type_string);
 if (enctype == ((void*)0))
     errx(1, "encryption type: %s no found",
   opt->encryption_type_string);
    }

    ret = hx509_query_alloc(context, &q);
    if (ret)
 errx(1, "hx509_query_alloc: %d", ret);

    hx509_query_match_option(q, HX509_QUERY_OPTION_KU_ENCIPHERMENT);

    ret = hx509_certs_find(context, certs, q, &cert);
    hx509_query_free(context, q);
    if (ret)
 errx(1, "hx509_certs_find: %d", ret);

    parse_oid(opt->content_type_string, &asn1_oid_id_pkcs7_data, &contentType);

    ret = hx509_cms_envelope_1(context, flags, cert, p, sz, enctype,
          &contentType, &o);
    if (ret)
 errx(1, "hx509_cms_envelope_1: %d", ret);

    hx509_cert_free(cert);
    hx509_certs_free(&certs);
    rk_xfree(p);
    der_free_oid(&contentType);

    if (opt->content_info_flag) {
 heim_octet_string wo;

 ret = hx509_cms_wrap_ContentInfo(&asn1_oid_id_pkcs7_envelopedData, &o, &wo);
 if (ret)
     errx(1, "hx509_cms_wrap_ContentInfo: %d", ret);

 der_free_octet_string(&o);
 o = wo;
    }

    hx509_lock_free(lock);

    ret = _hx509_write_file(argv[1], o.data, o.length);
    if (ret)
 errx(1, "hx509_write_file: %d", ret);

    der_free_octet_string(&o);

    return 0;
}
