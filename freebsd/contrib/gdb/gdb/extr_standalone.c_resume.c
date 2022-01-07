
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REGISTER_TYPE ;


 int NUM_REGS ;
 int POP_REGISTERS ;
 int PUSH_FRAME_PTR ;
 int memcpy (int *,int ,int) ;
 int save_frame_pointer () ;
 int saved_regs ;

resume (void)
{
  REGISTER_TYPE restore[NUM_REGS];

  PUSH_FRAME_PTR;
  save_frame_pointer ();

  memcpy (restore, saved_regs, sizeof restore);
  POP_REGISTERS;

}
