
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_network () ;
 int init_sys () ;
 int init_telnet () ;
 int init_terminal () ;

void
tninit(void)
{
    init_terminal();

    init_network();

    init_telnet();

    init_sys();
}
