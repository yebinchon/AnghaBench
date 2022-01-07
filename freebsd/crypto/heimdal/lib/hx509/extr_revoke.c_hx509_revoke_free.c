
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* hx509_revoke_ctx ;
struct TYPE_9__ {size_t len; TYPE_3__* val; } ;
struct TYPE_8__ {size_t len; TYPE_3__* val; } ;
struct TYPE_10__ {scalar_t__ ref; TYPE_2__ crls; TYPE_1__ ocsps; int crl; struct TYPE_10__* path; } ;


 int _hx509_abort (char*) ;
 int free (TYPE_3__*) ;
 int free_CRLCertificateList (int *) ;
 int free_ocsp (TYPE_3__*) ;
 int memset (TYPE_3__*,int ,int) ;

void
hx509_revoke_free(hx509_revoke_ctx *ctx)
{
    size_t i ;

    if (ctx == ((void*)0) || *ctx == ((void*)0))
 return;

    if ((*ctx)->ref == 0)
 _hx509_abort("revoke ctx refcount == 0 on free");
    if (--(*ctx)->ref > 0)
 return;

    for (i = 0; i < (*ctx)->crls.len; i++) {
 free((*ctx)->crls.val[i].path);
 free_CRLCertificateList(&(*ctx)->crls.val[i].crl);
    }

    for (i = 0; i < (*ctx)->ocsps.len; i++)
 free_ocsp(&(*ctx)->ocsps.val[i]);
    free((*ctx)->ocsps.val);

    free((*ctx)->crls.val);

    memset(*ctx, 0, sizeof(**ctx));
    free(*ctx);
    *ctx = ((void*)0);
}
