
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;







 scalar_t__ g_gate_verbose ;
 int printf (char*,...) ;
 int vprintf (char const*,int ) ;
 int vsyslog (int,char const*,int ) ;

void
g_gate_vlog(int priority, const char *message, va_list ap)
{

 if (g_gate_verbose) {
  const char *prefix;

  switch (priority) {
  case 131:
   prefix = "error";
   break;
  case 128:
   prefix = "warning";
   break;
  case 129:
   prefix = "notice";
   break;
  case 130:
   prefix = "info";
   break;
  case 132:
   prefix = "debug";
   break;
  default:
   prefix = "unknown";
  }

  printf("%s: ", prefix);
  vprintf(message, ap);
  printf("\n");
 } else {
  if (priority != 132)
   vsyslog(priority, message, ap);
 }
}
