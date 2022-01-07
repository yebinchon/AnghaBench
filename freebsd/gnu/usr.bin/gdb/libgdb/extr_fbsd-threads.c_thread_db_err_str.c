
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_err_e ;
typedef int buf ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *
thread_db_err_str (td_err_e err)
{
  static char buf[64];

  switch (err)
    {
    case 129:
      return "generic 'call succeeded'";
    case 142:
      return "generic error";
    case 132:
      return "no thread to satisfy query";
    case 133:
      return "no sync handle to satisfy query";
    case 135:
      return "no LWP to satisfy query";
    case 147:
      return "invalid process handle";
    case 144:
      return "invalid thread handle";
    case 146:
      return "invalid synchronization handle";
    case 145:
      return "invalid thread agent";
    case 148:
      return "invalid key";
    case 134:
      return "no event message for getmsg";
    case 137:
      return "FPU register set not available";
    case 136:
      return "application not linked with libthread";
    case 138:
      return "requested event is not supported";
    case 139:
      return "capability not available";
    case 143:
      return "debugger service failed";
    case 140:
      return "operation not applicable to";
    case 131:
      return "no thread-specific data for this thread";
    case 141:
      return "malloc failed";
    case 128:
      return "only part of register set was written/read";
    case 130:
      return "X register set not available for this thread";
    default:
      snprintf (buf, sizeof (buf), "unknown thread_db error '%d'", err);
      return buf;
    }
}
