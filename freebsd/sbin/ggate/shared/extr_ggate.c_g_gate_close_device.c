
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int g_gate_devfd ;

void
g_gate_close_device(void)
{

 close(g_gate_devfd);
}
