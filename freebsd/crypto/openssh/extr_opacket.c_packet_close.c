
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * active_state ;
 int ssh_packet_close (int *) ;

void
packet_close(void)
{
 ssh_packet_close(active_state);
 active_state = ((void*)0);
}
