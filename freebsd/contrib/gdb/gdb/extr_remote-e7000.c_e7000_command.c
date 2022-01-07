
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctrl_c ;
 int e7000_desc ;
 scalar_t__ echo ;
 int error (char*) ;
 int expect_full_prompt () ;
 int printf_unfiltered (char*) ;
 int puts_e7000debug (char*) ;
 int registers_changed () ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void
e7000_command (char *args, int fromtty)
{

  char buf[200];

  echo = 0;

  if (!e7000_desc)
    error ("e7000 target not open.");
  if (!args)
    {
      puts_e7000debug ("\r");
    }
  else
    {
      sprintf (buf, "%s\r", args);
      puts_e7000debug (buf);
    }

  echo++;
  ctrl_c = 2;
  expect_full_prompt ();
  echo--;
  ctrl_c = 0;
  printf_unfiltered ("\n");


  registers_changed ();
}
