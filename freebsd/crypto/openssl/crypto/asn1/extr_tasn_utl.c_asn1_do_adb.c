
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ (* adb_cb ) (long*) ;int tblcount; TYPE_1__ const* default_tt; TYPE_2__* tbl; TYPE_1__ const* null_tt; int offset; } ;
struct TYPE_7__ {int flags; int item; } ;
struct TYPE_8__ {long value; TYPE_1__ const tt; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_TEMPLATE ;
typedef int ASN1_OBJECT ;
typedef int ASN1_INTEGER ;
typedef TYPE_2__ ASN1_ADB_TABLE ;
typedef TYPE_3__ ASN1_ADB ;


 TYPE_3__* ASN1_ADB_ptr (int ) ;
 int ASN1_F_ASN1_DO_ADB ;
 long ASN1_INTEGER_get (int *) ;
 int ASN1_R_UNSUPPORTED_ANY_DEFINED_BY_TYPE ;
 int ASN1_TFLG_ADB_MASK ;
 int ASN1_TFLG_ADB_OID ;
 int ASN1err (int ,int ) ;
 long OBJ_obj2nid (int *) ;
 int ** offset2ptr (int *,int ) ;
 scalar_t__ stub1 (long*) ;

const ASN1_TEMPLATE *asn1_do_adb(ASN1_VALUE **pval, const ASN1_TEMPLATE *tt,
                                 int nullerr)
{
    const ASN1_ADB *adb;
    const ASN1_ADB_TABLE *atbl;
    long selector;
    ASN1_VALUE **sfld;
    int i;
    if (!(tt->flags & ASN1_TFLG_ADB_MASK))
        return tt;


    adb = ASN1_ADB_ptr(tt->item);


    sfld = offset2ptr(*pval, adb->offset);


    if (*sfld == ((void*)0)) {
        if (!adb->null_tt)
            goto err;
        return adb->null_tt;
    }





    if (tt->flags & ASN1_TFLG_ADB_OID)
        selector = OBJ_obj2nid((ASN1_OBJECT *)*sfld);
    else
        selector = ASN1_INTEGER_get((ASN1_INTEGER *)*sfld);


    if (adb->adb_cb != ((void*)0) && adb->adb_cb(&selector) == 0) {
        ASN1err(ASN1_F_ASN1_DO_ADB, ASN1_R_UNSUPPORTED_ANY_DEFINED_BY_TYPE);
        return ((void*)0);
    }
    for (atbl = adb->tbl, i = 0; i < adb->tblcount; i++, atbl++)
        if (atbl->value == selector)
            return &atbl->tt;




    if (!adb->default_tt)
        goto err;
    return adb->default_tt;

 err:

    if (nullerr)
        ASN1err(ASN1_F_ASN1_DO_ADB, ASN1_R_UNSUPPORTED_ANY_DEFINED_BY_TYPE);
    return ((void*)0);
}
