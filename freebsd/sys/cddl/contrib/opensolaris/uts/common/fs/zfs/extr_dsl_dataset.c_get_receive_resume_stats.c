
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int dsl_dataset_t ;


 int ZFS_PROP_RECEIVE_RESUME_TOKEN ;
 int dsl_prop_nvlist_add_string (int *,int ,char*) ;
 char* get_child_receive_stats (int *) ;
 char* get_receive_resume_stats_impl (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strfree (char*) ;

__attribute__((used)) static void
get_receive_resume_stats(dsl_dataset_t *ds, nvlist_t *nv)
{
 char *propval = get_receive_resume_stats_impl(ds);
 if (strcmp(propval, "") != 0) {
  dsl_prop_nvlist_add_string(nv,
      ZFS_PROP_RECEIVE_RESUME_TOKEN, propval);
 } else {
  char *childval = get_child_receive_stats(ds);
  if (strcmp(childval, "") != 0) {
   dsl_prop_nvlist_add_string(nv,
       ZFS_PROP_RECEIVE_RESUME_TOKEN, childval);
  }
  strfree(childval);
 }
 strfree(propval);
}
