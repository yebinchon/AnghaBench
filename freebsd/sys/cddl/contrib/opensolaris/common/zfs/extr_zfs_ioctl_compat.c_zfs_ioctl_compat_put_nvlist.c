
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t zc_nvlist_dst_size; scalar_t__ zc_nvlist_dst; int zc_iflags; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;


 int EFAULT ;
 int KM_SLEEP ;
 int NV_ENCODE_NATIVE ;
 int VERIFY (int) ;
 scalar_t__ ddi_copyout (char*,void*,size_t,int ) ;
 char* kmem_alloc (size_t,int ) ;
 int kmem_free (char*,size_t) ;
 scalar_t__ nvlist_pack (int *,char**,size_t*,int ,int ) ;
 scalar_t__ nvlist_size (int *,size_t*,int ) ;

__attribute__((used)) static int
zfs_ioctl_compat_put_nvlist(zfs_cmd_t *zc, nvlist_t *nvl)
{
 char *packed = ((void*)0);
 int error = 0;
 size_t size;

 VERIFY(nvlist_size(nvl, &size, NV_ENCODE_NATIVE) == 0);
 packed = (void *)(uintptr_t)zc->zc_nvlist_dst;
 VERIFY(nvlist_pack(nvl, &packed, &size, NV_ENCODE_NATIVE,
     0) == 0);


 zc->zc_nvlist_dst_size = size;
 return (error);
}
