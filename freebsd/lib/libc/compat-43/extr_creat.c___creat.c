
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int AT_FDCWD ;
 size_t INTERPOS_openat ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,char const*,int) ;

int
__creat(const char *path, mode_t mode)
{

 return (((int (*)(int, const char *, int, ...))
     __libc_interposing[INTERPOS_openat])(AT_FDCWD, path, O_WRONLY |
     O_CREAT | O_TRUNC, mode));
}
