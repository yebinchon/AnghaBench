
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct pt_retstack {int top; int bottom; int * stack; } ;


 int pt_retstack_size ;
 int pte_invalid ;
 int pte_retstack_empty ;

int pt_retstack_pop(struct pt_retstack *retstack, uint64_t *ip)
{
 uint8_t top;

 if (!retstack)
  return -pte_invalid;

 top = retstack->top;

 if (top == retstack->bottom)
  return -pte_retstack_empty;

 top = (!top ? pt_retstack_size : top - 1);

 retstack->top = top;

 if (ip)
  *ip = retstack->stack[top];

 return 0;
}
