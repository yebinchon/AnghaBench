
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ (* hdb_foreach_func_t ) (int ,TYPE_1__*,int *,void*) ;
typedef int hdb_entry_ex ;
struct TYPE_8__ {scalar_t__ (* hdb_firstkey ) (int ,TYPE_1__*,unsigned int,int *) ;scalar_t__ (* hdb_nextkey ) (int ,TYPE_1__*,unsigned int,int *) ;} ;
typedef TYPE_1__ HDB ;


 scalar_t__ HDB_ERR_NOENTRY ;
 int hdb_free_entry (int ,int *) ;
 int krb5_clear_error_message (int ) ;
 scalar_t__ stub1 (int ,TYPE_1__*,unsigned int,int *) ;
 scalar_t__ stub2 (int ,TYPE_1__*,int *,void*) ;
 scalar_t__ stub3 (int ,TYPE_1__*,unsigned int,int *) ;

krb5_error_code
hdb_foreach(krb5_context context,
     HDB *db,
     unsigned flags,
     hdb_foreach_func_t func,
     void *data)
{
    krb5_error_code ret;
    hdb_entry_ex entry;
    ret = db->hdb_firstkey(context, db, flags, &entry);
    if (ret == 0)
 krb5_clear_error_message(context);
    while(ret == 0){
 ret = (*func)(context, db, &entry, data);
 hdb_free_entry(context, &entry);
 if(ret == 0)
     ret = db->hdb_nextkey(context, db, flags, &entry);
    }
    if(ret == HDB_ERR_NOENTRY)
 ret = 0;
    return ret;
}
