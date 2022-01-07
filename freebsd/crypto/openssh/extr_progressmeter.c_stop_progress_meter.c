
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int alarm (int ) ;
 int atomicio (int ,int ,char*,int) ;
 int can_output () ;
 scalar_t__ cur_pos ;
 scalar_t__ end_pos ;
 int refresh_progress_meter () ;
 int vwrite ;

void
stop_progress_meter(void)
{
 alarm(0);

 if (!can_output())
  return;


 if (cur_pos != end_pos)
  refresh_progress_meter();

 atomicio(vwrite, STDOUT_FILENO, "\n", 1);
}
