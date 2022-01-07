
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Ctrl_C_Handler ;


 size_t CTRLC_STACK_MAX ;
 int FALSE ;
 int TRUE ;
 scalar_t__* ctrlc_stack ;
 size_t ctrlc_stack_len ;

int
push_ctrl_c_handler(
 Ctrl_C_Handler func
 )
{
 size_t size = ctrlc_stack_len;
 if (func && (size < CTRLC_STACK_MAX)) {
  ctrlc_stack[size] = func;
  ctrlc_stack_len = size + 1;
  return TRUE;
 }
 return FALSE;
}
