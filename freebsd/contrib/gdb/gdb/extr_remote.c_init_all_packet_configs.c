
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_Z_PACKET_TYPES ;
 int remote_protocol_E ;
 int remote_protocol_P ;
 int * remote_protocol_Z ;
 int remote_protocol_binary_download ;
 int remote_protocol_e ;
 int remote_protocol_qPart_auxv ;
 int remote_protocol_qPart_dirty ;
 int remote_protocol_qSymbol ;
 int remote_protocol_vcont ;
 int update_packet_config (int *) ;

__attribute__((used)) static void
init_all_packet_configs (void)
{
  int i;
  update_packet_config (&remote_protocol_e);
  update_packet_config (&remote_protocol_E);
  update_packet_config (&remote_protocol_P);
  update_packet_config (&remote_protocol_qSymbol);
  update_packet_config (&remote_protocol_vcont);
  for (i = 0; i < NR_Z_PACKET_TYPES; i++)
    update_packet_config (&remote_protocol_Z[i]);


  update_packet_config (&remote_protocol_binary_download);
  update_packet_config (&remote_protocol_qPart_auxv);
  update_packet_config (&remote_protocol_qPart_dirty);
}
