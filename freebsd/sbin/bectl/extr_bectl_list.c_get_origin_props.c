
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int be ;
 scalar_t__ be_get_dataset_props (int ,char*,int *) ;
 scalar_t__ be_prop_list_alloc (int **) ;
 int fprintf (int ,char*) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 int stderr ;

__attribute__((used)) static const char *
get_origin_props(nvlist_t *dsprops, nvlist_t **originprops)
{
 char *propstr;

 if (nvlist_lookup_string(dsprops, "origin", &propstr) == 0) {
  if (be_prop_list_alloc(originprops) != 0) {
   fprintf(stderr,
       "bectl list: failed to allocate origin prop nvlist\n");
   return (((void*)0));
  }
  if (be_get_dataset_props(be, propstr, *originprops) != 0) {

   fprintf(stderr,
       "bectl list: failed to fetch origin properties\n");
   return (((void*)0));
  }

  return (propstr);
 }
 return (((void*)0));
}
