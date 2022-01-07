
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
default_terminal_info (char *args, int from_tty)
{
  printf_unfiltered ("No saved terminal information.\n");
}
