
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_dataset_hold (int *,char*,void*,int **) ;
 char* strchr (char const*,char) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 scalar_t__ zfs_component_namecheck (char*,int *,int *) ;

__attribute__((used)) static int
dsl_bookmark_hold_ds(dsl_pool_t *dp, const char *fullname,
    dsl_dataset_t **dsp, void *tag, char **shortnamep)
{
 char buf[ZFS_MAX_DATASET_NAME_LEN];
 char *hashp;

 if (strlen(fullname) >= ZFS_MAX_DATASET_NAME_LEN)
  return (SET_ERROR(ENAMETOOLONG));
 hashp = strchr(fullname, '#');
 if (hashp == ((void*)0))
  return (SET_ERROR(EINVAL));

 *shortnamep = hashp + 1;
 if (zfs_component_namecheck(*shortnamep, ((void*)0), ((void*)0)))
  return (SET_ERROR(EINVAL));
 (void) strlcpy(buf, fullname, hashp - fullname + 1);
 return (dsl_dataset_hold(dp, buf, tag, dsp));
}
