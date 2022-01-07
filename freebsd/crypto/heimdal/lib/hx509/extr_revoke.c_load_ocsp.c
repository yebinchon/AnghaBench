
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_mtime; } ;
struct TYPE_6__ {TYPE_1__* certs; } ;
struct revoke_ocsp {int * signer; int * certs; TYPE_2__ ocsp; int last_modfied; int path; } ;
typedef int hx509_context ;
typedef int * hx509_certs ;
typedef int * hx509_cert ;
struct TYPE_5__ {size_t len; int * val; } ;
typedef TYPE_2__ OCSPBasicOCSPResponse ;


 int errno ;
 int free_OCSPBasicOCSPResponse (TYPE_2__*) ;
 int hx509_cert_free (int *) ;
 int hx509_cert_init (int ,int *,int **) ;
 int hx509_certs_add (int ,int *,int *) ;
 int hx509_certs_free (int **) ;
 int hx509_certs_init (int ,char*,int ,int *,int **) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int parse_ocsp_basic (void*,size_t,TYPE_2__*) ;
 int rk_undumpdata (int ,void**,size_t*) ;
 int rk_xfree (void*) ;
 int stat (int ,struct stat*) ;

__attribute__((used)) static int
load_ocsp(hx509_context context, struct revoke_ocsp *ocsp)
{
    OCSPBasicOCSPResponse basic;
    hx509_certs certs = ((void*)0);
    size_t length;
    struct stat sb;
    void *data;
    int ret;

    ret = rk_undumpdata(ocsp->path, &data, &length);
    if (ret)
 return ret;

    ret = stat(ocsp->path, &sb);
    if (ret)
 return errno;

    ret = parse_ocsp_basic(data, length, &basic);
    rk_xfree(data);
    if (ret) {
 hx509_set_error_string(context, 0, ret,
          "Failed to parse OCSP response");
 return ret;
    }

    if (basic.certs) {
 size_t i;

 ret = hx509_certs_init(context, "MEMORY:ocsp-certs", 0,
          ((void*)0), &certs);
 if (ret) {
     free_OCSPBasicOCSPResponse(&basic);
     return ret;
 }

 for (i = 0; i < basic.certs->len; i++) {
     hx509_cert c;

     ret = hx509_cert_init(context, &basic.certs->val[i], &c);
     if (ret)
  continue;

     ret = hx509_certs_add(context, certs, c);
     hx509_cert_free(c);
     if (ret)
  continue;
 }
    }

    ocsp->last_modfied = sb.st_mtime;

    free_OCSPBasicOCSPResponse(&ocsp->ocsp);
    hx509_certs_free(&ocsp->certs);
    hx509_cert_free(ocsp->signer);

    ocsp->ocsp = basic;
    ocsp->certs = certs;
    ocsp->signer = ((void*)0);

    return 0;
}
