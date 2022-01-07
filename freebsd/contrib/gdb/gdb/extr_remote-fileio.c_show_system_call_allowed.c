
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*) ;
 int printf_unfiltered (char*,char*) ;
 scalar_t__ remote_fio_system_call_allowed ;

__attribute__((used)) static void
show_system_call_allowed (char *args, int from_tty)
{
  if (args)
    error ("Garbage after \"show remote system-call-allowed\" command: `%s'", args);
  printf_unfiltered ("Calling host system(3) call from target is %sallowed\n",
       remote_fio_system_call_allowed ? "" : "not ");
}
