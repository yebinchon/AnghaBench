
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
typedef int krb5_error_code ;
typedef int hdb_entry ;
struct TYPE_5__ {int last_pw_change; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
typedef TYPE_3__ HDB_extension ;


 int choice_HDB_extension_data_last_pw_change ;
 TYPE_3__* hdb_find_extension (int const*,int ) ;

krb5_error_code
hdb_entry_get_pw_change_time(const hdb_entry *entry, time_t *t)
{
    const HDB_extension *ext;

    ext = hdb_find_extension(entry, choice_HDB_extension_data_last_pw_change);
    if (ext)
 *t = ext->data.u.last_pw_change;
    else
 *t = 0;

    return 0;
}
