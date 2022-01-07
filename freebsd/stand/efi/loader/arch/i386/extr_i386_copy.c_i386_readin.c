
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int ssize_t ;


 int PTOV (int ) ;
 int read (int const,int ,size_t const) ;

ssize_t
i386_readin(const int fd, vm_offset_t dest, const size_t len)
{
    return (read(fd, PTOV(dest), len));
}
