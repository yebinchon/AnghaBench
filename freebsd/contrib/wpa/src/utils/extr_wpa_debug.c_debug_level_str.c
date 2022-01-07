
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char * debug_level_str(int level)
{
 switch (level) {
 case 131:
  return "EXCESSIVE";
 case 129:
  return "MSGDUMP";
 case 133:
  return "DEBUG";
 case 130:
  return "INFO";
 case 128:
  return "WARNING";
 case 132:
  return "ERROR";
 default:
  return "?";
 }
}
