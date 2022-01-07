
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int KM_SLEEP ;
 int ddi_copyin (void*,char*,size_t,int) ;
 char* kmem_alloc (size_t,int ) ;
 int kmem_free (char*,size_t) ;
 int nvlist_unpack (char*,size_t,int **,int ) ;

__attribute__((used)) static int
zfs_ioctl_compat_get_nvlist(uint64_t nvl, size_t size, int iflag,
    nvlist_t **nvp)
{
 char *packed;
 int error;
 nvlist_t *list = ((void*)0);




 if (size == 0)
  return (EINVAL);
 packed = (void *)(uintptr_t)nvl;


 error = nvlist_unpack(packed, size, &list, 0);





 if (error != 0)
  return (error);

 *nvp = list;
 return (0);
}
