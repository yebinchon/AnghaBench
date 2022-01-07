
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef size_t const ssize_t ;


 int PTOV (int ) ;
 int bcopy (void const*,int ,size_t const) ;

ssize_t
i386_copyin(const void *src, vm_offset_t dest, const size_t len)
{
    bcopy(src, PTOV(dest), len);
    return(len);
}
