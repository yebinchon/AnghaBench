
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* abspath; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;



const char *
svn_wc__adm_access_abspath(const svn_wc_adm_access_t *adm_access)
{
  return adm_access->abspath;
}
