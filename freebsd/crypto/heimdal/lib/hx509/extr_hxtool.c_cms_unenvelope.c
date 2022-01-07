
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct cms_unenvelope_options {scalar_t__ allow_weak_crypto_flag; int certificate_strings; scalar_t__ content_info_flag; int pass_strings; } ;
typedef int hx509_lock ;
typedef int hx509_certs ;
struct TYPE_11__ {int * member_1; int member_0; } ;
typedef TYPE_1__ heim_oid ;
struct TYPE_12__ {void* data; size_t length; } ;
typedef TYPE_2__ heim_octet_string ;


 int HX509_CMS_UE_ALLOW_WEAK ;
 int _hx509_write_file (char*,void*,size_t) ;
 int asn1_oid_id_pkcs7_envelopedData ;
 int certs_strings (int ,char*,int ,int ,int *) ;
 int context ;
 int der_free_octet_string (TYPE_2__*) ;
 int der_free_oid (TYPE_1__*) ;
 scalar_t__ der_heim_oid_cmp (TYPE_1__*,int *) ;
 int err (int,char*,char*,int) ;
 int errx (int,char*,...) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;
 int hx509_cms_unenvelope (int ,int ,int,void*,size_t,int *,int ,TYPE_1__*,TYPE_2__*) ;
 int hx509_cms_unwrap_ContentInfo (TYPE_2__*,TYPE_1__*,TYPE_2__*,int *) ;
 int hx509_err (int ,int,int,char*) ;
 int hx509_lock_free (int ) ;
 int hx509_lock_init (int ,int *) ;
 int lock_strings (int ,int *) ;
 int rk_undumpdata (char*,void**,size_t*) ;
 int rk_xfree (void*) ;

int
cms_unenvelope(struct cms_unenvelope_options *opt, int argc, char **argv)
{
    heim_oid contentType = { 0, ((void*)0) };
    heim_octet_string o, co;
    hx509_certs certs;
    size_t sz;
    void *p;
    int ret;
    hx509_lock lock;
    int flags = 0;

    hx509_lock_init(context, &lock);
    lock_strings(lock, &opt->pass_strings);

    ret = rk_undumpdata(argv[0], &p, &sz);
    if (ret)
 err(1, "map_file: %s: %d", argv[0], ret);

    co.data = p;
    co.length = sz;

    if (opt->content_info_flag) {
 heim_octet_string uwco;
 heim_oid oid;

 ret = hx509_cms_unwrap_ContentInfo(&co, &oid, &uwco, ((void*)0));
 if (ret)
     errx(1, "hx509_cms_unwrap_ContentInfo: %d", ret);

 if (der_heim_oid_cmp(&oid, &asn1_oid_id_pkcs7_envelopedData) != 0)
     errx(1, "Content is not SignedData");
 der_free_oid(&oid);

 co = uwco;
    }

    ret = hx509_certs_init(context, "MEMORY:cert-store", 0, ((void*)0), &certs);
    if (ret)
 errx(1, "hx509_certs_init: MEMORY: %d", ret);

    certs_strings(context, "store", certs, lock, &opt->certificate_strings);

    if (opt->allow_weak_crypto_flag)
 flags |= HX509_CMS_UE_ALLOW_WEAK;

    ret = hx509_cms_unenvelope(context, certs, flags, co.data, co.length,
          ((void*)0), 0, &contentType, &o);
    if (co.data != p)
 der_free_octet_string(&co);
    if (ret)
 hx509_err(context, 1, ret, "hx509_cms_unenvelope");

    rk_xfree(p);
    hx509_lock_free(lock);
    hx509_certs_free(&certs);
    der_free_oid(&contentType);

    ret = _hx509_write_file(argv[1], o.data, o.length);
    if (ret)
 errx(1, "hx509_write_file: %d", ret);

    der_free_octet_string(&o);

    return 0;
}
