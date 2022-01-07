
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_exit {int dummy; } ;
struct vm {int dummy; } ;



__attribute__((used)) static int
emulate_inout_str(struct vm *vm, int vcpuid, struct vm_exit *vmexit, bool *retu)
{
 *retu = 1;
 return (0);
}
