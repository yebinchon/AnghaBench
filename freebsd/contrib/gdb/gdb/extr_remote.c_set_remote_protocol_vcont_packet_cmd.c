
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int remote_protocol_vcont ;
 int update_packet_config (int *) ;

__attribute__((used)) static void
set_remote_protocol_vcont_packet_cmd (char *args, int from_tty,
          struct cmd_list_element *c)
{
  update_packet_config (&remote_protocol_vcont);
}
