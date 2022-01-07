
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_copyinfo {scalar_t__ len; int hva; } ;
struct vm {int dummy; } ;


 int bcopy (char const*,int ,scalar_t__) ;

void
vm_copyout(struct vm *vm, int vcpuid, const void *kaddr,
    struct vm_copyinfo *copyinfo, size_t len)
{
 const char *src;
 int idx;

 src = kaddr;
 idx = 0;
 while (len > 0) {
  bcopy(src, copyinfo[idx].hva, copyinfo[idx].len);
  len -= copyinfo[idx].len;
  src += copyinfo[idx].len;
  idx++;
 }
}
