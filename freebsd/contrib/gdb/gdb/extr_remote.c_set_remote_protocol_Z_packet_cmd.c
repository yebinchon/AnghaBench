
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_list_element {int dummy; } ;
struct TYPE_3__ {int detect; } ;


 int NR_Z_PACKET_TYPES ;
 int remote_Z_packet_detect ;
 TYPE_1__* remote_protocol_Z ;
 int update_packet_config (TYPE_1__*) ;

__attribute__((used)) static void
set_remote_protocol_Z_packet_cmd (char *args, int from_tty,
      struct cmd_list_element *c)
{
  int i;
  for (i = 0; i < NR_Z_PACKET_TYPES; i++)
    {
      remote_protocol_Z[i].detect = remote_Z_packet_detect;
      update_packet_config (&remote_protocol_Z[i]);
    }
}
