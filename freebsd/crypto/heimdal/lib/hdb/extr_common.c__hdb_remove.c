
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int krb5_const_principal ;
struct TYPE_5__ {int (* hdb__del ) (int ,TYPE_1__*,int ) ;} ;
typedef TYPE_1__ HDB ;


 int hdb_principal2key (int ,int ,int *) ;
 int hdb_remove_aliases (int ,TYPE_1__*,int *) ;
 int krb5_data_free (int *) ;
 int stub1 (int ,TYPE_1__*,int ) ;

krb5_error_code
_hdb_remove(krb5_context context, HDB *db, krb5_const_principal principal)
{
    krb5_data key;
    int code;

    hdb_principal2key(context, principal, &key);

    code = hdb_remove_aliases(context, db, &key);
    if (code) {
 krb5_data_free(&key);
 return code;
    }
    code = db->hdb__del(context, db, key);
    krb5_data_free(&key);
    return code;
}
