
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int active_state ;
 int ssh_packet_get_char (int ) ;

u_int
packet_get_char(void)
{
 return (ssh_packet_get_char(active_state));
}
