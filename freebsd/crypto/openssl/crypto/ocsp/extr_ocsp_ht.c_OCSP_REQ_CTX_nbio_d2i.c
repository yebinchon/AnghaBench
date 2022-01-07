
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int mem; } ;
typedef TYPE_1__ OCSP_REQ_CTX ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int * ASN1_item_d2i (int *,unsigned char const**,int,int const*) ;
 int BIO_get_mem_data (int ,unsigned char const**) ;
 int OCSP_REQ_CTX_nbio (TYPE_1__*) ;
 int OHS_ERROR ;

int OCSP_REQ_CTX_nbio_d2i(OCSP_REQ_CTX *rctx,
                          ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    int rv, len;
    const unsigned char *p;

    rv = OCSP_REQ_CTX_nbio(rctx);
    if (rv != 1)
        return rv;

    len = BIO_get_mem_data(rctx->mem, &p);
    *pval = ASN1_item_d2i(((void*)0), &p, len, it);
    if (*pval == ((void*)0)) {
        rctx->state = OHS_ERROR;
        return 0;
    }
    return 1;
}
