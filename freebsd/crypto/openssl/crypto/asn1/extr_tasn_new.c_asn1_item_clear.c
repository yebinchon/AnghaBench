
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* asn1_ex_clear ) (int **,TYPE_1__ const*) ;} ;
struct TYPE_6__ {int itype; int templates; TYPE_2__* funcs; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_ITEM ;
typedef TYPE_2__ ASN1_EXTERN_FUNCS ;
 int asn1_primitive_clear (int **,TYPE_1__ const*) ;
 int asn1_template_clear (int **,int ) ;
 int stub1 (int **,TYPE_1__ const*) ;

__attribute__((used)) static void asn1_item_clear(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    const ASN1_EXTERN_FUNCS *ef;

    switch (it->itype) {

    case 132:
        ef = it->funcs;
        if (ef && ef->asn1_ex_clear)
            ef->asn1_ex_clear(pval, it);
        else
            *pval = ((void*)0);
        break;

    case 129:
        if (it->templates)
            asn1_template_clear(pval, it->templates);
        else
            asn1_primitive_clear(pval, it);
        break;

    case 131:
        asn1_primitive_clear(pval, it);
        break;

    case 133:
    case 128:
    case 130:
        *pval = ((void*)0);
        break;
    }
}
