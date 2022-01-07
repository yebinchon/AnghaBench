
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef size_t const ssize_t ;


 int PTOV (int const) ;
 int bcopy (int ,void*,size_t const) ;

ssize_t
i386_copyout(const vm_offset_t src, void *dest, const size_t len)
{
    bcopy(PTOV(src), dest, len);
    return(len);
}
