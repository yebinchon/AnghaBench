
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;


 scalar_t__ MON_IDT ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup (int ,int *) ;
 int mips_exit_cleanups ;
 int mips_exiting ;
 int mips_expect (char*) ;
 scalar_t__ mips_monitor ;
 char* mips_monitor_prompt ;
 scalar_t__ mips_need_reply ;
 int mips_receive_wait ;
 int mips_request (char,int ,int ,int*,int ,int *) ;

__attribute__((used)) static int
mips_exit_debug (void)
{
  int err;
  struct cleanup *old_cleanups = make_cleanup (mips_exit_cleanups, ((void*)0));

  mips_exiting = 1;

  if (mips_monitor != MON_IDT)
    {


      mips_request ('x', 0, 0, ((void*)0), mips_receive_wait, ((void*)0));
      mips_need_reply = 0;
      if (!mips_expect (" break!"))
 return -1;
    }
  else
    mips_request ('x', 0, 0, &err, mips_receive_wait, ((void*)0));

  if (!mips_expect (mips_monitor_prompt))
    return -1;

  do_cleanups (old_cleanups);

  return 0;
}
