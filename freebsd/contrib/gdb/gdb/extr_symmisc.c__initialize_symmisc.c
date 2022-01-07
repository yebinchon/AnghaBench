
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int std_err ;
 int std_in ;
 int std_out ;
 int stderr ;
 int stdin ;
 int stdout ;

void
_initialize_symmisc (void)
{
  std_in = stdin;
  std_out = stdout;
  std_err = stderr;
}
