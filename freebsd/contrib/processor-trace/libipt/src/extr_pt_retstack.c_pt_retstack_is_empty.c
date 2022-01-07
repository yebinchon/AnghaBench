
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_retstack {scalar_t__ top; scalar_t__ bottom; } ;


 int pte_invalid ;

int pt_retstack_is_empty(const struct pt_retstack *retstack)
{
 if (!retstack)
  return -pte_invalid;

 return (retstack->top == retstack->bottom ? 1 : 0);
}
