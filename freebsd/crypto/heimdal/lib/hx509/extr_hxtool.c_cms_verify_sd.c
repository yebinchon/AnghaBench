
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct pem_data {scalar_t__ detached_data; TYPE_1__* os; } ;
struct cms_verify_sd_options {char* signed_content_string; scalar_t__ allow_wrong_oid_flag; int signer_allowed_flag; scalar_t__ content_info_flag; scalar_t__ pem_flag; int certificate_strings; int anchors_strings; int pass_strings; scalar_t__ missing_revoke_flag; } ;
typedef int * hx509_verify_ctx ;
typedef int hx509_lock ;
typedef int * hx509_certs ;
typedef int heim_oid ;
struct TYPE_9__ {void* data; size_t length; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int FILE ;


 int HX509_CMS_VS_ALLOW_DATA_OID_MISMATCH ;
 int HX509_CMS_VS_ALLOW_ZERO_SIGNER ;
 int _hx509_map_file_os (char*,TYPE_1__*) ;
 int _hx509_unmap_file_os (TYPE_1__*) ;
 int _hx509_write_file (char*,void*,size_t) ;
 int asn1_oid_id_pkcs7_signedData ;
 int certs_strings (int ,char*,int *,int ,int *) ;
 int context ;
 int der_free_octet_string (TYPE_1__*) ;
 int der_free_oid (int *) ;
 scalar_t__ der_heim_oid_cmp (int *,int *) ;
 int der_print_heim_oid (int *,char,char**) ;
 int err (int,char*,char*,...) ;
 int errx (int,char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int hx509_certs_free (int **) ;
 int hx509_certs_init (int ,char*,int ,int *,int **) ;
 int hx509_certs_iter_f (int ,int *,int ,int ) ;
 int hx509_ci_print_names ;
 int hx509_cms_unwrap_ContentInfo (TYPE_1__*,int *,TYPE_1__*,int *) ;
 int hx509_cms_verify_signed (int ,int *,int,void*,size_t,TYPE_1__*,int *,int *,TYPE_1__*,int **) ;
 int hx509_context_set_missing_revoke (int ,int) ;
 int hx509_err (int ,int,int,char*) ;
 int hx509_lock_free (int ) ;
 int hx509_lock_init (int ,int *) ;
 int hx509_pem_read (int ,int *,int ,struct pem_data*) ;
 int hx509_verify_attach_anchors (int *,int *) ;
 int hx509_verify_destroy_ctx (int *) ;
 int hx509_verify_init_ctx (int ,int **) ;
 int lock_strings (int ,int *) ;
 int pem_reader ;
 int printf (char*,...) ;
 int rk_undumpdata (char*,void**,size_t*) ;
 int rk_xfree (void*) ;
 int stdout ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;

int
cms_verify_sd(struct cms_verify_sd_options *opt, int argc, char **argv)
{
    hx509_verify_ctx ctx = ((void*)0);
    heim_oid type;
    heim_octet_string c, co, signeddata, *sd = ((void*)0);
    hx509_certs store = ((void*)0);
    hx509_certs signers = ((void*)0);
    hx509_certs anchors = ((void*)0);
    hx509_lock lock;
    int ret, flags = 0;

    size_t sz;
    void *p = ((void*)0);

    if (opt->missing_revoke_flag)
 hx509_context_set_missing_revoke(context, 1);

    hx509_lock_init(context, &lock);
    lock_strings(lock, &opt->pass_strings);

    ret = hx509_verify_init_ctx(context, &ctx);
    if (ret)
 hx509_err(context, 1, ret, "hx509_verify_init_ctx");

    ret = hx509_certs_init(context, "MEMORY:cms-anchors", 0, ((void*)0), &anchors);
    if (ret)
 hx509_err(context, 1, ret, "hx509_certs_init: MEMORY");
    ret = hx509_certs_init(context, "MEMORY:cert-store", 0, ((void*)0), &store);
    if (ret)
 hx509_err(context, 1, ret, "hx509_certs_init: MEMORY");

    certs_strings(context, "anchors", anchors, lock, &opt->anchors_strings);
    certs_strings(context, "store", store, lock, &opt->certificate_strings);

    if (opt->pem_flag) {
 struct pem_data pd;
 FILE *f;

 pd.os = &co;
 pd.detached_data = 0;

 f = fopen(argv[0], "r");
 if (f == ((void*)0))
     err(1, "Failed to open file %s", argv[0]);

 ret = hx509_pem_read(context, f, pem_reader, &pd);
 fclose(f);
 if (ret)
     errx(1, "PEM reader failed: %d", ret);

 if (pd.detached_data && opt->signed_content_string == ((void*)0)) {
     char *r = strrchr(argv[0], '.');
     if (r && strcasecmp(r, ".pem") == 0) {
  char *s = strdup(argv[0]);
  if (s == ((void*)0))
      errx(1, "malloc: out of memory");
  s[r - argv[0]] = '\0';
  ret = _hx509_map_file_os(s, &signeddata);
  if (ret)
      errx(1, "map_file: %s: %d", s, ret);
  free(s);
  sd = &signeddata;
     }
 }

    } else {
 ret = rk_undumpdata(argv[0], &p, &sz);
 if (ret)
     err(1, "map_file: %s: %d", argv[0], ret);

 co.data = p;
 co.length = sz;
    }

    if (opt->signed_content_string) {
 ret = _hx509_map_file_os(opt->signed_content_string, &signeddata);
 if (ret)
     errx(1, "map_file: %s: %d", opt->signed_content_string, ret);
 sd = &signeddata;
    }

    if (opt->content_info_flag) {
 heim_octet_string uwco;
 heim_oid oid;

 ret = hx509_cms_unwrap_ContentInfo(&co, &oid, &uwco, ((void*)0));
 if (ret)
     errx(1, "hx509_cms_unwrap_ContentInfo: %d", ret);

 if (der_heim_oid_cmp(&oid, &asn1_oid_id_pkcs7_signedData) != 0)
     errx(1, "Content is not SignedData");
 der_free_oid(&oid);

 if (p == ((void*)0))
     der_free_octet_string(&co);
 else {
     rk_xfree(p);
     p = ((void*)0);
 }
 co = uwco;
    }

    hx509_verify_attach_anchors(ctx, anchors);

    if (!opt->signer_allowed_flag)
 flags |= HX509_CMS_VS_ALLOW_ZERO_SIGNER;
    if (opt->allow_wrong_oid_flag)
 flags |= HX509_CMS_VS_ALLOW_DATA_OID_MISMATCH;

    ret = hx509_cms_verify_signed(context, ctx, flags, co.data, co.length, sd,
      store, &type, &c, &signers);
    if (p != co.data)
 der_free_octet_string(&co);
    else
 rk_xfree(p);
    if (ret)
 hx509_err(context, 1, ret, "hx509_cms_verify_signed");

    {
 char *str;
 der_print_heim_oid(&type, '.', &str);
 printf("type: %s\n", str);
 free(str);
 der_free_oid(&type);
    }
    if (signers == ((void*)0)) {
 printf("unsigned\n");
    } else {
 printf("signers:\n");
 hx509_certs_iter_f(context, signers, hx509_ci_print_names, stdout);
    }

    hx509_verify_destroy_ctx(ctx);

    hx509_certs_free(&store);
    hx509_certs_free(&signers);
    hx509_certs_free(&anchors);

    hx509_lock_free(lock);

    if (argc > 1) {
 ret = _hx509_write_file(argv[1], c.data, c.length);
 if (ret)
     errx(1, "hx509_write_file: %d", ret);
    }

    der_free_octet_string(&c);

    if (sd)
 _hx509_unmap_file_os(sd);

    return 0;
}
