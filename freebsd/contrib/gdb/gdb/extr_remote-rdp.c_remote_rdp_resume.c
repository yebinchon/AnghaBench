
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int rdp_execute () ;
 int rdp_step () ;

__attribute__((used)) static void
remote_rdp_resume (ptid_t ptid, int step, enum target_signal siggnal)
{
  if (step)
    rdp_step ();
  else
    rdp_execute ();
}
