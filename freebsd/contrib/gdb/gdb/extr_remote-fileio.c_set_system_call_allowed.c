
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int remote_fio_system_call_allowed ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static void
set_system_call_allowed (char *args, int from_tty)
{
  if (args)
    {
      char *arg_end;
      int val = strtoul (args, &arg_end, 10);
      if (*args && *arg_end == '\0')
        {
   remote_fio_system_call_allowed = !!val;
   return;
 }
    }
  error ("Illegal argument for \"set remote system-call-allowed\" command");
}
