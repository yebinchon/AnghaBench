
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef size_t const ssize_t ;


 int bcopy (void const*,void*,size_t const) ;
 scalar_t__ ofw_mapmem (scalar_t__,size_t const) ;
 int printf (char*) ;

ssize_t
ofw_copyin(const void *src, vm_offset_t dest, const size_t len)
{
        if (ofw_mapmem(dest, len)) {
                printf("ofw_copyin: map error\n");
                return (0);
        }

        bcopy(src, (void *)dest, len);
        return(len);
}
