
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vm {int dummy; } ;
struct vatpic {int* elc; } ;


 int IO_ELCR1 ;
 int VATPIC_LOCK (struct vatpic*) ;
 int VATPIC_UNLOCK (struct vatpic*) ;
 struct vatpic* vm_atpic (struct vm*) ;

int
vatpic_elc_handler(struct vm *vm, int vcpuid, bool in, int port, int bytes,
    uint32_t *eax)
{
 struct vatpic *vatpic;
 bool is_master;

 vatpic = vm_atpic(vm);
 is_master = (port == IO_ELCR1);

 if (bytes != 1)
  return (-1);

 VATPIC_LOCK(vatpic);

 if (in) {
  if (is_master)
   *eax = vatpic->elc[0];
  else
   *eax = vatpic->elc[1];
 } else {
  if (is_master)
   vatpic->elc[0] = (*eax & 0xf8);
  else
   vatpic->elc[1] = (*eax & 0xde);
 }

 VATPIC_UNLOCK(vatpic);

 return (0);
}
