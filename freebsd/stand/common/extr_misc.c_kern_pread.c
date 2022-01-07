
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int off_t ;
struct TYPE_2__ {scalar_t__ (* arch_readin ) (int,int ,size_t) ;} ;


 int SEEK_SET ;
 TYPE_1__ archsw ;
 int lseek (int,int ,int ) ;
 int printf (char*) ;
 scalar_t__ stub1 (int,int ,size_t) ;

int
kern_pread(int fd, vm_offset_t dest, size_t len, off_t off)
{

 if (lseek(fd, off, SEEK_SET) == -1) {



  return (-1);
 }
 if ((size_t)archsw.arch_readin(fd, dest, len) != len) {



  return (-1);
 }
 return (0);
}
