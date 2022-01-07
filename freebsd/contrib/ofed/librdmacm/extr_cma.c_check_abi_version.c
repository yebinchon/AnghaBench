
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RDMA_USER_CM_MAX_ABI_VERSION ;
 scalar_t__ RDMA_USER_CM_MIN_ABI_VERSION ;
 scalar_t__ abi_ver ;
 int ibv_get_sysfs_path () ;
 scalar_t__ ibv_read_sysfs_file (int ,char*,char*,int) ;
 scalar_t__ strtol (char*,int *,int) ;

__attribute__((used)) static int check_abi_version(void)
{
 char value[8];

 if ((ibv_read_sysfs_file(ibv_get_sysfs_path(),
     "class/misc/rdma_cm/abi_version",
     value, sizeof value) < 0) &&
     (ibv_read_sysfs_file(ibv_get_sysfs_path(),
     "class/infiniband_ucma/abi_version",
     value, sizeof value) < 0)) {





  return 0;
 }

 abi_ver = strtol(value, ((void*)0), 10);
 if (abi_ver < RDMA_USER_CM_MIN_ABI_VERSION ||
     abi_ver > RDMA_USER_CM_MAX_ABI_VERSION) {
  return -1;
 }
 return 0;
}
