
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bp_hardware_breakpoint ;
 int remote_hw_breakpoint_limit ;
 int remote_hw_watchpoint_limit ;

__attribute__((used)) static int
remote_check_watch_resources (int type, int cnt, int ot)
{
  if (type == bp_hardware_breakpoint)
    {
      if (remote_hw_breakpoint_limit == 0)
 return 0;
      else if (remote_hw_breakpoint_limit < 0)
 return 1;
      else if (cnt <= remote_hw_breakpoint_limit)
 return 1;
    }
  else
    {
      if (remote_hw_watchpoint_limit == 0)
 return 0;
      else if (remote_hw_watchpoint_limit < 0)
 return 1;
      else if (ot)
 return -1;
      else if (cnt <= remote_hw_watchpoint_limit)
 return 1;
    }
  return -1;
}
