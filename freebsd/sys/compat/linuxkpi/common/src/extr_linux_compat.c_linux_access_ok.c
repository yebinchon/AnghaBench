
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t VM_MAXUSER_ADDRESS ;

int
linux_access_ok(const void *uaddr, size_t len)
{
 uintptr_t saddr;
 uintptr_t eaddr;


 saddr = (uintptr_t)uaddr;
 eaddr = (uintptr_t)uaddr + len;


 return ((saddr == eaddr) ||
     (eaddr > saddr && eaddr <= VM_MAXUSER_ADDRESS));
}
