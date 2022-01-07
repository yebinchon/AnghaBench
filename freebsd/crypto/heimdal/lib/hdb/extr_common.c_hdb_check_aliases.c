
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
struct TYPE_18__ {int principal; } ;
struct TYPE_14__ {TYPE_8__ entry; } ;
typedef TYPE_2__ hdb_entry_ex ;
struct TYPE_15__ {int principal; } ;
typedef TYPE_3__ hdb_entry_alias ;
struct TYPE_17__ {int (* hdb__get ) (int ,TYPE_5__*,int ,int *) ;} ;
struct TYPE_13__ {size_t len; int * val; } ;
struct TYPE_16__ {TYPE_1__ aliases; } ;
typedef TYPE_4__ HDB_Ext_Aliases ;
typedef TYPE_5__ HDB ;


 int ASN1_BAD_ID ;
 int HDB_ERR_EXISTS ;
 int HDB_ERR_NOENTRY ;
 int free_hdb_entry_alias (TYPE_3__*) ;
 int hdb_entry_get_aliases (TYPE_8__*,TYPE_4__ const**) ;
 int hdb_principal2key (int ,int *,int *) ;
 int hdb_value2entry_alias (int ,int *,TYPE_3__*) ;
 int krb5_data_free (int *) ;
 int krb5_principal_compare (int ,int ,int ) ;
 int stub1 (int ,TYPE_5__*,int ,int *) ;

__attribute__((used)) static krb5_error_code
hdb_check_aliases(krb5_context context, HDB *db, hdb_entry_ex *entry)
{
    const HDB_Ext_Aliases *aliases;
    int code;
    size_t i;



    code = hdb_entry_get_aliases(&entry->entry, &aliases);
    if (code)
 return code;

    for (i = 0; aliases && i < aliases->aliases.len; i++) {
 hdb_entry_alias alias;
 krb5_data akey, value;

 hdb_principal2key(context, &aliases->aliases.val[i], &akey);
 code = db->hdb__get(context, db, akey, &value);
 krb5_data_free(&akey);
 if (code == HDB_ERR_NOENTRY)
     continue;
 else if (code)
     return code;

 code = hdb_value2entry_alias(context, &value, &alias);
 krb5_data_free(&value);

 if (code == ASN1_BAD_ID)
     return HDB_ERR_EXISTS;
 else if (code)
     return code;

 code = krb5_principal_compare(context, alias.principal,
          entry->entry.principal);
 free_hdb_entry_alias(&alias);
 if (code == 0)
     return HDB_ERR_EXISTS;
    }
    return 0;
}
