
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_source_t ;
typedef int zpool_prop_t ;
typedef int uint64_t ;
typedef int nvlist_t ;


 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 int ZPROP_SOURCE ;
 int ZPROP_VALUE ;
 scalar_t__ nvlist_add_nvlist (int *,char const*,int *) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int ) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 char* zpool_prop_to_name (int ) ;

__attribute__((used)) static void
spa_prop_add_list(nvlist_t *nvl, zpool_prop_t prop, char *strval,
    uint64_t intval, zprop_source_t src)
{
 const char *propname = zpool_prop_to_name(prop);
 nvlist_t *propval;

 VERIFY(nvlist_alloc(&propval, NV_UNIQUE_NAME, KM_SLEEP) == 0);
 VERIFY(nvlist_add_uint64(propval, ZPROP_SOURCE, src) == 0);

 if (strval != ((void*)0))
  VERIFY(nvlist_add_string(propval, ZPROP_VALUE, strval) == 0);
 else
  VERIFY(nvlist_add_uint64(propval, ZPROP_VALUE, intval) == 0);

 VERIFY(nvlist_add_nvlist(nvl, propname, propval) == 0);
 nvlist_free(propval);
}
