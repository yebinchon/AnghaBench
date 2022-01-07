
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int hdb_entry ;
struct TYPE_5__ {int pkinit_acl; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
typedef TYPE_3__ HDB_extension ;
typedef int HDB_Ext_PKINIT_acl ;


 int choice_HDB_extension_data_pkinit_acl ;
 TYPE_3__* hdb_find_extension (int const*,int ) ;

krb5_error_code
hdb_entry_get_pkinit_acl(const hdb_entry *entry, const HDB_Ext_PKINIT_acl **a)
{
    const HDB_extension *ext;

    ext = hdb_find_extension(entry, choice_HDB_extension_data_pkinit_acl);
    if (ext)
 *a = &ext->data.u.pkinit_acl;
    else
 *a = ((void*)0);

    return 0;
}
