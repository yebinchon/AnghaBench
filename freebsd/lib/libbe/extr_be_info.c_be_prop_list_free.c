
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;

void
be_prop_list_free(nvlist_t *be_list)
{
 nvlist_t *prop_list;
 nvpair_t *be_pair;

 be_pair = nvlist_next_nvpair(be_list, ((void*)0));
 if (nvpair_value_nvlist(be_pair, &prop_list) == 0)
  nvlist_free(prop_list);

 while ((be_pair = nvlist_next_nvpair(be_list, be_pair)) != ((void*)0)) {
  if (nvpair_value_nvlist(be_pair, &prop_list) == 0)
   nvlist_free(prop_list);
 }
}
