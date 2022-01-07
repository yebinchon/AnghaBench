
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_2__* hdb_master_key ;
struct TYPE_5__ {scalar_t__ vno; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__ keytab; } ;



hdb_master_key
_hdb_find_master_key(uint32_t *mkvno, hdb_master_key mkey)
{
    hdb_master_key ret = ((void*)0);
    while(mkey) {
 if(ret == ((void*)0) && mkey->keytab.vno == 0)
     ret = mkey;
 if(mkvno == ((void*)0)) {
     if(ret == ((void*)0) || mkey->keytab.vno > ret->keytab.vno)
  ret = mkey;
 } else if((uint32_t)mkey->keytab.vno == *mkvno)
     return mkey;
 mkey = mkey->next;
    }
    return ret;
}
