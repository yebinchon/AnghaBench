
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfsvfs_t ;
typedef int zfs_userquota_prop_t ;
typedef int uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int B_FALSE ;
 scalar_t__ DATA_TYPE_NVLIST ;
 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int VERIFY (int) ;
 int ZPROP_VALUE ;
 scalar_t__ nvlist_lookup_nvpair (int *,int ,int **) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 scalar_t__ nvpair_value_uint64_array (int *,int **,unsigned int*) ;
 char* strchr (char const*,char) ;
 int zfs_set_userquota (int *,int ,char const*,int ,int ) ;
 int zfsvfs_hold (char const*,int ,int **,int ) ;
 int zfsvfs_rele (int *,int ) ;

__attribute__((used)) static int
zfs_prop_set_userquota(const char *dsname, nvpair_t *pair)
{
 const char *propname = nvpair_name(pair);
 uint64_t *valary;
 unsigned int vallen;
 const char *domain;
 char *dash;
 zfs_userquota_prop_t type;
 uint64_t rid;
 uint64_t quota;
 zfsvfs_t *zfsvfs;
 int err;

 if (nvpair_type(pair) == DATA_TYPE_NVLIST) {
  nvlist_t *attrs;
  VERIFY(nvpair_value_nvlist(pair, &attrs) == 0);
  if (nvlist_lookup_nvpair(attrs, ZPROP_VALUE,
      &pair) != 0)
   return (SET_ERROR(EINVAL));
 }





 if ((dash = strchr(propname, '-')) == ((void*)0) ||
     nvpair_value_uint64_array(pair, &valary, &vallen) != 0 ||
     vallen != 3)
  return (SET_ERROR(EINVAL));

 domain = dash + 1;
 type = valary[0];
 rid = valary[1];
 quota = valary[2];

 err = zfsvfs_hold(dsname, FTAG, &zfsvfs, B_FALSE);
 if (err == 0) {
  err = zfs_set_userquota(zfsvfs, type, domain, rid, quota);
  zfsvfs_rele(zfsvfs, FTAG);
 }

 return (err);
}
