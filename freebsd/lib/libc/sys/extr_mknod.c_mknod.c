
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int dev_t ;


 int AT_FDCWD ;
 int __sys_mknodat (int ,char const*,int ,int ) ;

int
mknod(const char *path, mode_t mode, dev_t dev)
{

 return (__sys_mknodat(AT_FDCWD, path, mode, dev));
}
