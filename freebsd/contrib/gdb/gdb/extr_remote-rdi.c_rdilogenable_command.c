
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Adp_SetLogEnable (int) ;
 int log_enable ;
 int printf_filtered (char*,char*) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
rdilogenable_command (char *args, int from_tty)
{
  if (!args || strlen (args) == 0)
    {
      printf_filtered ("rdi log is %s\n", log_enable ? "enabled" : "disabled");
      return;
    }

  if (!strcasecmp (args, "1") ||
      !strcasecmp (args, "y") ||
      !strcasecmp (args, "yes") ||
      !strcasecmp (args, "on") ||
      !strcasecmp (args, "t") ||
      !strcasecmp (args, "true"))
    Adp_SetLogEnable (log_enable = 1);
  else if (!strcasecmp (args, "0") ||
    !strcasecmp (args, "n") ||
    !strcasecmp (args, "no") ||
    !strcasecmp (args, "off") ||
    !strcasecmp (args, "f") ||
    !strcasecmp (args, "false"))
    Adp_SetLogEnable (log_enable = 0);
  else
    printf_filtered ("rdilogenable: unrecognized argument '%s'\n"
       "              try y or n\n", args);
}
