
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
struct TYPE_17__ {int principal; } ;
struct TYPE_13__ {TYPE_7__ entry; } ;
typedef TYPE_2__ hdb_entry_ex ;
struct TYPE_14__ {int principal; } ;
typedef TYPE_3__ hdb_entry_alias ;
struct TYPE_16__ {scalar_t__ (* hdb__put ) (int ,TYPE_5__*,unsigned int,int ,int ) ;} ;
struct TYPE_12__ {size_t len; int * val; } ;
struct TYPE_15__ {TYPE_1__ aliases; } ;
typedef TYPE_4__ HDB_Ext_Aliases ;
typedef TYPE_5__ HDB ;


 scalar_t__ hdb_entry_alias2value (int ,TYPE_3__*,int *) ;
 scalar_t__ hdb_entry_get_aliases (TYPE_7__*,TYPE_4__ const**) ;
 int hdb_principal2key (int ,int *,int *) ;
 int krb5_data_free (int *) ;
 scalar_t__ stub1 (int ,TYPE_5__*,unsigned int,int ,int ) ;

__attribute__((used)) static krb5_error_code
hdb_add_aliases(krb5_context context, HDB *db,
  unsigned flags, hdb_entry_ex *entry)
{
    const HDB_Ext_Aliases *aliases;
    krb5_error_code code;
    krb5_data key, value;
    size_t i;

    code = hdb_entry_get_aliases(&entry->entry, &aliases);
    if (code || aliases == ((void*)0))
 return code;

    for (i = 0; i < aliases->aliases.len; i++) {
 hdb_entry_alias entryalias;
 entryalias.principal = entry->entry.principal;

 hdb_principal2key(context, &aliases->aliases.val[i], &key);
 code = hdb_entry_alias2value(context, &entryalias, &value);
 if (code) {
     krb5_data_free(&key);
     return code;
 }
 code = db->hdb__put(context, db, flags, key, value);
 krb5_data_free(&key);
 krb5_data_free(&value);
 if (code)
     return code;
    }
    return 0;
}
