
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_9__ {TYPE_2__* extensions; } ;
typedef TYPE_4__ hdb_entry ;
struct TYPE_6__ {scalar_t__ element; } ;
struct TYPE_8__ {scalar_t__ mandatory; TYPE_1__ data; } ;
struct TYPE_7__ {size_t len; TYPE_3__* val; } ;


 int HDB_ERR_MANDATORY_OPTION ;
 scalar_t__ choice_HDB_extension_data_asn1_ellipsis ;
 int krb5_set_error_message (int ,int ,char*) ;

krb5_error_code
hdb_entry_check_mandatory(krb5_context context, const hdb_entry *ent)
{
    size_t i;

    if (ent->extensions == ((void*)0))
 return 0;





    for (i = 0; i < ent->extensions->len; i++) {
 if (ent->extensions->val[i].data.element !=
     choice_HDB_extension_data_asn1_ellipsis)
     continue;
 if (ent->extensions->val[i].mandatory) {
     krb5_set_error_message(context, HDB_ERR_MANDATORY_OPTION,
       "Principal have unknown "
       "mandatory extension");
     return HDB_ERR_MANDATORY_OPTION;
 }
    }
    return 0;
}
