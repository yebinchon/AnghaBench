
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int item; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_TEMPLATE ;


 int ASN1_ITEM_ptr (int ) ;
 int ASN1_TFLG_ADB_MASK ;
 int ASN1_TFLG_SK_MASK ;
 int asn1_item_clear (int **,int ) ;

__attribute__((used)) static void asn1_template_clear(ASN1_VALUE **pval, const ASN1_TEMPLATE *tt)
{

    if (tt->flags & (ASN1_TFLG_ADB_MASK | ASN1_TFLG_SK_MASK))
        *pval = ((void*)0);
    else
        asn1_item_clear(pval, ASN1_ITEM_ptr(tt->item));
}
