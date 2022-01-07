
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int cred_t ;


 int ENOENT ;
 int SET_ERROR (int ) ;
 scalar_t__ dsl_prop_get_integer (char const*,char*,int *,int *) ;
 int zfs_dozonecheck_impl (char const*,int ,int *) ;

__attribute__((used)) static int
zfs_dozonecheck(const char *dataset, cred_t *cr)
{
 uint64_t zoned;

 if (dsl_prop_get_integer(dataset, "jailed", &zoned, ((void*)0)))
  return (SET_ERROR(ENOENT));

 return (zfs_dozonecheck_impl(dataset, zoned, cr));
}
