
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int hdb_entry ;
struct TYPE_10__ {scalar_t__ (* hdb__get ) (int ,TYPE_3__*,int ,int *) ;scalar_t__ (* hdb__del ) (int ,TYPE_3__*,int ) ;} ;
struct TYPE_8__ {size_t len; int * val; } ;
struct TYPE_9__ {TYPE_1__ aliases; } ;
typedef TYPE_2__ HDB_Ext_Aliases ;
typedef TYPE_3__ HDB ;


 scalar_t__ HDB_ERR_NOENTRY ;
 int free_hdb_entry (int *) ;
 scalar_t__ hdb_entry_get_aliases (int *,TYPE_2__ const**) ;
 int hdb_principal2key (int ,int *,int *) ;
 scalar_t__ hdb_value2entry (int ,int *,int *) ;
 int krb5_data_free (int *) ;
 scalar_t__ stub1 (int ,TYPE_3__*,int ,int *) ;
 scalar_t__ stub2 (int ,TYPE_3__*,int ) ;

__attribute__((used)) static krb5_error_code
hdb_remove_aliases(krb5_context context, HDB *db, krb5_data *key)
{
    const HDB_Ext_Aliases *aliases;
    krb5_error_code code;
    hdb_entry oldentry;
    krb5_data value;
    size_t i;

    code = db->hdb__get(context, db, *key, &value);
    if (code == HDB_ERR_NOENTRY)
 return 0;
    else if (code)
 return code;

    code = hdb_value2entry(context, &value, &oldentry);
    krb5_data_free(&value);
    if (code)
 return code;

    code = hdb_entry_get_aliases(&oldentry, &aliases);
    if (code || aliases == ((void*)0)) {
 free_hdb_entry(&oldentry);
 return code;
    }
    for (i = 0; i < aliases->aliases.len; i++) {
 krb5_data akey;

 hdb_principal2key(context, &aliases->aliases.val[i], &akey);
 code = db->hdb__del(context, db, akey);
 krb5_data_free(&akey);
 if (code) {
     free_hdb_entry(&oldentry);
     return code;
 }
    }
    free_hdb_entry(&oldentry);
    return 0;
}
