
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LogLevel ;
 int * argv0 ;
 int log_level ;

int
log_change_level(LogLevel new_log_level)
{

 if (argv0 == ((void*)0))
  return 0;

 switch (new_log_level) {
 case 129:
 case 131:
 case 132:
 case 130:
 case 128:
 case 135:
 case 134:
 case 133:
  log_level = new_log_level;
  return 0;
 default:
  return -1;
 }
}
