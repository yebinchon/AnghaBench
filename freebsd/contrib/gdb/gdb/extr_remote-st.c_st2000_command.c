
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int expect_prompt (int ) ;
 int printf_stdebug (char*,char*) ;
 int st2000_desc ;

__attribute__((used)) static void
st2000_command (char *args, int fromtty)
{
  if (!st2000_desc)
    error ("st2000 target not open.");

  if (!args)
    error ("Missing command.");

  printf_stdebug ("%s\r", args);
  expect_prompt (0);
}
