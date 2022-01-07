
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int expect_prompt (int) ;
 int readchar (int ) ;
 int timeout ;

__attribute__((used)) static int
get_hex_digit (int ignore_space)
{
  int ch;
  while (1)
    {
      ch = readchar (timeout);
      if (ch >= '0' && ch <= '9')
 return ch - '0';
      else if (ch >= 'A' && ch <= 'F')
 return ch - 'A' + 10;
      else if (ch >= 'a' && ch <= 'f')
 return ch - 'a' + 10;
      else if (ch == ' ' && ignore_space)
 ;
      else
 {
   expect_prompt (1);
   error ("Invalid hex digit from remote system.");
 }
    }
}
