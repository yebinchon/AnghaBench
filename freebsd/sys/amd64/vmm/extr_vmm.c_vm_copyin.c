
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_copyinfo {scalar_t__ len; int hva; } ;
struct vm {int dummy; } ;


 int bcopy (int ,char*,scalar_t__) ;

void
vm_copyin(struct vm *vm, int vcpuid, struct vm_copyinfo *copyinfo, void *kaddr,
    size_t len)
{
 char *dst;
 int idx;

 dst = kaddr;
 idx = 0;
 while (len > 0) {
  bcopy(copyinfo[idx].hva, dst, copyinfo[idx].len);
  len -= copyinfo[idx].len;
  dst += copyinfo[idx].len;
  idx++;
 }
}
