
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PUSH_REGISTERS ;
 int restore_gdb () ;
 int save_registers () ;

fault (void)
{



  PUSH_REGISTERS;


  save_registers ();

  restore_gdb ();

}
