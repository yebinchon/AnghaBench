
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * entries_all; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef int apr_hash_t ;



apr_hash_t *
svn_wc__adm_access_entries(svn_wc_adm_access_t *adm_access)
{






  return adm_access->entries_all;

}
