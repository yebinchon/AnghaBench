
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ itype; int utype; int size; TYPE_1__* funcs; } ;
struct TYPE_5__ {int (* prim_clear ) (int **,TYPE_2__ const*) ;} ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_PRIMITIVE_FUNCS ;
typedef TYPE_2__ ASN1_ITEM ;
typedef int ASN1_BOOLEAN ;


 scalar_t__ ASN1_ITYPE_MSTRING ;
 int V_ASN1_BOOLEAN ;
 int stub1 (int **,TYPE_2__ const*) ;

__attribute__((used)) static void asn1_primitive_clear(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    int utype;
    if (it && it->funcs) {
        const ASN1_PRIMITIVE_FUNCS *pf = it->funcs;
        if (pf->prim_clear)
            pf->prim_clear(pval, it);
        else
            *pval = ((void*)0);
        return;
    }
    if (!it || (it->itype == ASN1_ITYPE_MSTRING))
        utype = -1;
    else
        utype = it->utype;
    if (utype == V_ASN1_BOOLEAN)
        *(ASN1_BOOLEAN *)pval = it->size;
    else
        *pval = ((void*)0);
}
