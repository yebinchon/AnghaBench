
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_6__ {scalar_t__ nvl_error; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_ASSERT (TYPE_1__*) ;
 int NV_TYPE_FIRST ;
 int NV_TYPE_LAST ;
 int NV_TYPE_NONE ;
 int PJDLOG_ASSERT (int) ;
 int * nvlist_find (TYPE_1__*,int,char const*) ;
 int nvlist_free_nvpair (TYPE_1__*,int *) ;
 int nvlist_report_missing (int,char const*) ;

void
nvlist_free_type(nvlist_t *nvl, const char *name, int type)
{
 nvpair_t *nvp;

 NVLIST_ASSERT(nvl);
 PJDLOG_ASSERT(nvl->nvl_error == 0);
 PJDLOG_ASSERT(type == NV_TYPE_NONE ||
     (type >= NV_TYPE_FIRST && type <= NV_TYPE_LAST));

 nvp = nvlist_find(nvl, type, name);
 if (nvp != ((void*)0))
  nvlist_free_nvpair(nvl, nvp);
 else
  nvlist_report_missing(type, name);
}
