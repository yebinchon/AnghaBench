
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int ssize_t ;


 int read (int,void*,size_t) ;

__attribute__((used)) static ssize_t
beri_arch_readin(int fd, vm_offset_t va, size_t len)
{

 return (read(fd, (void *)va, len));
}
