
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int gr_expect_prompt () ;
 int sr_readchar () ;

int
sr_get_hex_digit (int ignore_space)
{
  int ch;

  while (1)
    {
      ch = sr_readchar ();
      if (ch >= '0' && ch <= '9')
 return ch - '0';
      else if (ch >= 'A' && ch <= 'F')
 return ch - 'A' + 10;
      else if (ch >= 'a' && ch <= 'f')
 return ch - 'a' + 10;
      else if (ch != ' ' || !ignore_space)
 {
   gr_expect_prompt ();
   error ("Invalid hex digit from remote system.");
 }
    }
}
