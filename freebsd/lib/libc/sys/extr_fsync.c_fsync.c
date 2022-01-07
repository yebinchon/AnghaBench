
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t INTERPOS_fsync ;
 scalar_t__* __libc_interposing ;
 int stub1 (int) ;

int
fsync(int fd)
{

 return (((int (*)(int))__libc_interposing[INTERPOS_fsync])(fd));
}
