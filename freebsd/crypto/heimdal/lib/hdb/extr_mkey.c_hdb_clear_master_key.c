
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_3__ {scalar_t__ hdb_master_key_set; int hdb_master_key; } ;
typedef TYPE_1__ HDB ;


 int hdb_free_master_key (int ,int ) ;

krb5_error_code
hdb_clear_master_key (krb5_context context,
        HDB *db)
{
    if (db->hdb_master_key_set) {
 hdb_free_master_key(context, db->hdb_master_key);
 db->hdb_master_key_set = 0;
    }
    return 0;
}
