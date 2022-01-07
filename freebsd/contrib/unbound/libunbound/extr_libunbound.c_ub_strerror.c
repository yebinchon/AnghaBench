
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char*
ub_strerror(int err)
{
 switch(err) {
  case 135: return "no error";
  case 129: return "socket io error";
  case 133: return "out of memory";
  case 128: return "syntax error";
  case 130: return "server failure";
  case 137: return "could not fork";
  case 136: return "initialization failure";
  case 138: return "setting change after finalize";
  case 132: return "error in pipe communication with async";
  case 131: return "error reading file";
  case 134: return "error async_id does not exist";
  default: return "unknown error";
 }
}
