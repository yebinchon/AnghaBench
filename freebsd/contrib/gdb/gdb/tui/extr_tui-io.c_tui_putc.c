
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tui_puts (char*) ;

__attribute__((used)) static void
tui_putc (char c)
{
  char buf[2];

  buf[0] = c;
  buf[1] = 0;
  tui_puts (buf);
}
