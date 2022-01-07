
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Ctrl_C_Handler ;


 int FALSE ;
 int TRUE ;
 int ** ctrlc_stack ;
 size_t ctrlc_stack_len ;

int
pop_ctrl_c_handler(
 Ctrl_C_Handler func
 )
{
 size_t size = ctrlc_stack_len;
 if (size) {
  --size;
  if (func == ((void*)0) || func == ctrlc_stack[size]) {
   ctrlc_stack_len = size;
   return TRUE;
  }
 }
 return FALSE;
}
