
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int assert (int) ;

__attribute__((used)) static const char *
pjdlog_level_string(int loglevel)
{

 switch (loglevel) {
 case 132:
  return ("EMERG");
 case 135:
  return ("ALERT");
 case 134:
  return ("CRIT");
 case 131:
  return ("ERROR");
 case 128:
  return ("WARNING");
 case 129:
  return ("NOTICE");
 case 130:
  return ("INFO");
 case 133:
  return ("DEBUG");
 }
 assert(!"Invalid log level.");
 abort();
}
