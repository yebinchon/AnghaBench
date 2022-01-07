
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* hdb_master_key ;
struct TYPE_4__ {int vno; } ;
struct TYPE_5__ {TYPE_1__ keytab; } ;



int
_hdb_mkey_version(hdb_master_key mkey)
{
    return mkey->keytab.vno;
}
