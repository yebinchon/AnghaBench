
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_thr_state_e ;
typedef int buf ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *
thread_db_state_str (td_thr_state_e state)
{
  static char buf[64];

  switch (state)
    {
    case 130:
      return "stopped by debugger";
    case 132:
      return "runnable";
    case 133:
      return "active";
    case 128:
      return "zombie";
    case 131:
      return "sleeping";
    case 129:
      return "stopped by debugger AND blocked";
    default:
      snprintf (buf, sizeof (buf), "unknown thread_db state %d", state);
      return buf;
    }
}
