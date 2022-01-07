
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int hdb_entry ;
struct TYPE_5__ {scalar_t__ last_pw_change; } ;
struct TYPE_6__ {TYPE_1__ u; int element; } ;
struct TYPE_7__ {TYPE_2__ data; int mandatory; } ;
typedef TYPE_3__ HDB_extension ;


 int FALSE ;
 int choice_HDB_extension_data_last_pw_change ;
 int hdb_replace_extension (int ,int *,TYPE_3__*) ;
 scalar_t__ time (int *) ;

krb5_error_code
hdb_entry_set_pw_change_time(krb5_context context,
        hdb_entry *entry,
        time_t t)
{
    HDB_extension ext;

    ext.mandatory = FALSE;
    ext.data.element = choice_HDB_extension_data_last_pw_change;
    if (t == 0)
 t = time(((void*)0));
    ext.data.u.last_pw_change = t;

    return hdb_replace_extension(context, entry, &ext);
}
