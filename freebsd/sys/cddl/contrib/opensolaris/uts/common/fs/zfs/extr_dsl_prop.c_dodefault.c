
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_prop_t ;
typedef int uint64_t ;


 int ENOENT ;
 int EOVERFLOW ;
 scalar_t__ PROP_TYPE_STRING ;
 int SET_ERROR (int ) ;
 scalar_t__ ZPROP_INVAL ;
 int strncpy (void*,int *,int) ;
 int zfs_prop_default_numeric (scalar_t__) ;
 int * zfs_prop_default_string (scalar_t__) ;
 scalar_t__ zfs_prop_get_type (scalar_t__) ;
 scalar_t__ zfs_prop_readonly (scalar_t__) ;
 int zfs_prop_setonce (scalar_t__) ;

__attribute__((used)) static int
dodefault(zfs_prop_t prop, int intsz, int numints, void *buf)
{





 if (prop == ZPROP_INVAL ||
     (zfs_prop_readonly(prop) && !zfs_prop_setonce(prop)))
  return (SET_ERROR(ENOENT));

 if (zfs_prop_get_type(prop) == PROP_TYPE_STRING) {
  if (zfs_prop_default_string(prop) == ((void*)0))
   return (SET_ERROR(ENOENT));
  if (intsz != 1)
   return (SET_ERROR(EOVERFLOW));
  (void) strncpy(buf, zfs_prop_default_string(prop),
      numints);
 } else {
  if (intsz != 8 || numints < 1)
   return (SET_ERROR(EOVERFLOW));

  *(uint64_t *)buf = zfs_prop_default_numeric(prop);
 }

 return (0);
}
