
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int NR_Z_PACKET_TYPES ;
 int * remote_protocol_Z ;
 int show_packet_config_cmd (int *) ;

__attribute__((used)) static void
show_remote_protocol_Z_packet_cmd (char *args, int from_tty,
       struct cmd_list_element *c)
{
  int i;
  for (i = 0; i < NR_Z_PACKET_TYPES; i++)
    {
      show_packet_config_cmd (&remote_protocol_Z[i]);
    }
}
