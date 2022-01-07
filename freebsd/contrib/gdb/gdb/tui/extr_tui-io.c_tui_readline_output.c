
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_client_data ;
typedef int buf ;


 int read (int ,char*,int) ;
 scalar_t__ tui_active ;
 int tui_puts (char*) ;
 int * tui_readline_pipe ;

__attribute__((used)) static void
tui_readline_output (int code, gdb_client_data data)
{
  int size;
  char buf[256];

  size = read (tui_readline_pipe[0], buf, sizeof (buf) - 1);
  if (size > 0 && tui_active)
    {
      buf[size] = 0;
      tui_puts (buf);
    }
}
