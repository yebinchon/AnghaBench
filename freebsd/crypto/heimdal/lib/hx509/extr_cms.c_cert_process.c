
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* certificates; } ;
struct sigctx {TYPE_1__ sd; } ;
typedef int hx509_context ;
typedef int hx509_cert ;
struct TYPE_4__ {unsigned int len; int * val; } ;


 int ENOMEM ;
 int hx509_cert_binary (int ,int ,int *) ;
 void* realloc (int *,unsigned int const) ;

__attribute__((used)) static int
cert_process(hx509_context context, void *ctx, hx509_cert cert)
{
    struct sigctx *sigctx = ctx;
    const unsigned int i = sigctx->sd.certificates->len;
    void *ptr;
    int ret;

    ptr = realloc(sigctx->sd.certificates->val,
    (i + 1) * sizeof(sigctx->sd.certificates->val[0]));
    if (ptr == ((void*)0))
 return ENOMEM;
    sigctx->sd.certificates->val = ptr;

    ret = hx509_cert_binary(context, cert,
       &sigctx->sd.certificates->val[i]);
    if (ret == 0)
 sigctx->sd.certificates->len++;

    return ret;
}
