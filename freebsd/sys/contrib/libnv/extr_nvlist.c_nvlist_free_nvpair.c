
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int NVLIST_ASSERT (int *) ;
 int NVPAIR_ASSERT (int *) ;
 int PJDLOG_ASSERT (int) ;
 int nvlist_remove_nvpair (int *,int *) ;
 int nvpair_free (int *) ;
 int * nvpair_nvlist (int *) ;

void
nvlist_free_nvpair(nvlist_t *nvl, nvpair_t *nvp)
{

 NVLIST_ASSERT(nvl);
 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvpair_nvlist(nvp) == nvl);

 nvlist_remove_nvpair(nvl, nvp);
 nvpair_free(nvp);
}
