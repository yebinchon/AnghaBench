
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int be ;
 scalar_t__ be_get_dataset_props (int ,char*,int *) ;
 scalar_t__ be_prop_list_alloc (int **) ;
 int free (char*) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 unsigned long long strtoull (char*,int *,int) ;

__attribute__((used)) static unsigned long long
dataset_space(const char *oname)
{
 unsigned long long space;
 char *dsname, *propstr, *sep;
 nvlist_t *dsprops;

 space = 0;
 dsname = strdup(oname);
 if (dsname == ((void*)0))
  return (0);


 if ((sep = strchr(dsname, '@')) != ((void*)0))
  *sep = '\0';

 if (be_prop_list_alloc(&dsprops) != 0) {
  free(dsname);
  return (0);
 }

 if (be_get_dataset_props(be, dsname, dsprops) != 0) {
  nvlist_free(dsprops);
  free(dsname);
  return (0);
 }

 if (nvlist_lookup_string(dsprops, "used", &propstr) == 0)
  space = strtoull(propstr, ((void*)0), 10);

 nvlist_free(dsprops);
 free(dsname);
 return (space);
}
