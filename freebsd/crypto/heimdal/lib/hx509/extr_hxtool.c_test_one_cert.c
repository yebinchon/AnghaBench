
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* hx509_verify_ctx ;
typedef int hx509_context ;
typedef int * hx509_certs ;
typedef int hx509_cert ;
typedef int heim_oid ;
struct TYPE_4__ {int data; int length; } ;
typedef TYPE_1__ heim_octet_string ;


 int * _hx509_cert_private_key (int ) ;
 int context ;
 int errx (int,char*) ;
 int free (int ) ;
 int hx509_cms_create_signed_1 (int ,int ,int *,int *,int ,int *,int ,int *,int *,int *,TYPE_1__*) ;
 int hx509_cms_verify_signed (int ,void*,int ,int ,int ,int *,int *,int *,TYPE_1__*,int **) ;
 int hx509_err (int ,int,int,char*) ;
 int printf (char*) ;

__attribute__((used)) static int
test_one_cert(hx509_context hxcontext, void *ctx, hx509_cert cert)
{
    heim_octet_string sd, c;
    hx509_verify_ctx vctx = ctx;
    hx509_certs signer = ((void*)0);
    heim_oid type;
    int ret;

    if (_hx509_cert_private_key(cert) == ((void*)0))
 return 0;

    ret = hx509_cms_create_signed_1(context, 0, ((void*)0), ((void*)0), 0,
        ((void*)0), cert, ((void*)0), ((void*)0), ((void*)0), &sd);
    if (ret)
 errx(1, "hx509_cms_create_signed_1");

    ret = hx509_cms_verify_signed(context, vctx, 0, sd.data, sd.length,
      ((void*)0), ((void*)0), &type, &c, &signer);
    free(sd.data);
    if (ret)
 hx509_err(context, 1, ret, "hx509_cms_verify_signed");

    printf("create-signature verify-sigature done\n");

    free(c.data);

    return 0;
}
