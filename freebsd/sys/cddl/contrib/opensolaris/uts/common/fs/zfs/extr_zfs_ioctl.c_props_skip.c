
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 scalar_t__ nvlist_add_nvpair (int *,int *) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_exists (int *,int ) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;

__attribute__((used)) static void
props_skip(nvlist_t *props, nvlist_t *skipped, nvlist_t **newprops)
{
 nvpair_t *pair;

 VERIFY(nvlist_alloc(newprops, NV_UNIQUE_NAME, KM_SLEEP) == 0);

 pair = ((void*)0);
 while ((pair = nvlist_next_nvpair(props, pair)) != ((void*)0)) {
  if (nvlist_exists(skipped, nvpair_name(pair)))
   continue;

  VERIFY(nvlist_add_nvpair(*newprops, pair) == 0);
 }
}
