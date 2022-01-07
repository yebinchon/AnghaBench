
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int e ;
 int re_putc (int ,int,int ) ;
 int tty_get_signal_character (int ,int) ;

void
rl_echo_signal_char(int sig)
{
 int c = tty_get_signal_character(e, sig);
 if (c == -1)
  return;
 re_putc(e, c, 0);
}
