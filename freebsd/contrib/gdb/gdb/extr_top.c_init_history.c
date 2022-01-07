
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 scalar_t__ concat (int ,char*,int *) ;
 int current_directory ;
 char* getenv (char*) ;
 scalar_t__ history_filename ;
 int history_size ;
 int read_history (scalar_t__) ;
 scalar_t__ savestring (char*,int ) ;
 int stifle_history (int) ;
 int strlen (char*) ;

void
init_history (void)
{
  char *tmpenv;

  tmpenv = getenv ("HISTSIZE");
  if (tmpenv)
    history_size = atoi (tmpenv);
  else if (!history_size)
    history_size = 256;

  stifle_history (history_size);

  tmpenv = getenv ("GDBHISTFILE");
  if (tmpenv)
    history_filename = savestring (tmpenv, strlen (tmpenv));
  else if (!history_filename)
    {







      history_filename = concat (current_directory, "/.gdb_history", ((void*)0));

    }
  read_history (history_filename);
}
