
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_prop_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;

 scalar_t__ nvlist_add_nvpair (int *,int *) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_empty (int *) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int * nvlist_prev_nvpair (int *,int *) ;
 scalar_t__ nvlist_remove_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 scalar_t__ strcmp (int ,int ) ;
 int zfs_prop_to_name (scalar_t__ const) ;

__attribute__((used)) static nvlist_t *
extract_delay_props(nvlist_t *props)
{
 nvlist_t *delayprops;
 nvpair_t *nvp, *tmp;
 static const zfs_prop_t delayable[] = { 128, 0 };
 int i;

 VERIFY(nvlist_alloc(&delayprops, NV_UNIQUE_NAME, KM_SLEEP) == 0);

 for (nvp = nvlist_next_nvpair(props, ((void*)0)); nvp != ((void*)0);
     nvp = nvlist_next_nvpair(props, nvp)) {




  for (i = 0; delayable[i] != 0; i++) {
   if (strcmp(zfs_prop_to_name(delayable[i]),
       nvpair_name(nvp)) == 0) {
    break;
   }
  }
  if (delayable[i] != 0) {
   tmp = nvlist_prev_nvpair(props, nvp);
   VERIFY(nvlist_add_nvpair(delayprops, nvp) == 0);
   VERIFY(nvlist_remove_nvpair(props, nvp) == 0);
   nvp = tmp;
  }
 }

 if (nvlist_empty(delayprops)) {
  nvlist_free(delayprops);
  delayprops = ((void*)0);
 }
 return (delayprops);
}
