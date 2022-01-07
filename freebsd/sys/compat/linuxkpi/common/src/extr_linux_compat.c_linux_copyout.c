
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int copyout (void const*,void*,size_t) ;
 scalar_t__ linux_remap_address (void**,size_t) ;
 int memcpy (void*,void const*,size_t) ;

int
linux_copyout(const void *kaddr, void *uaddr, size_t len)
{
 if (linux_remap_address(&uaddr, len)) {
  if (uaddr == ((void*)0))
   return (-EFAULT);
  memcpy(uaddr, kaddr, len);
  return (0);
 }
 return (-copyout(kaddr, uaddr, len));
}
