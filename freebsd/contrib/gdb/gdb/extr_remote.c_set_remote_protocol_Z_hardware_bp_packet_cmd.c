
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 size_t Z_PACKET_HARDWARE_BP ;
 int * remote_protocol_Z ;
 int update_packet_config (int *) ;

__attribute__((used)) static void
set_remote_protocol_Z_hardware_bp_packet_cmd (char *args, int from_tty,
           struct cmd_list_element *c)
{
  update_packet_config (&remote_protocol_Z[Z_PACKET_HARDWARE_BP]);
}
