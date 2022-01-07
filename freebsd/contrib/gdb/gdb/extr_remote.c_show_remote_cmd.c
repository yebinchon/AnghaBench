
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int show_remote_protocol_E_packet_cmd (char*,int,int *) ;
 int show_remote_protocol_P_packet_cmd (char*,int,int *) ;
 int show_remote_protocol_Z_packet_cmd (char*,int,int *) ;
 int show_remote_protocol_binary_download_cmd (char*,int,int *) ;
 int show_remote_protocol_e_packet_cmd (char*,int,int *) ;
 int show_remote_protocol_qPart_auxv_packet_cmd (char*,int,int *) ;
 int show_remote_protocol_qPart_dirty_packet_cmd (char*,int,int *) ;
 int show_remote_protocol_qSymbol_packet_cmd (char*,int,int *) ;
 int show_remote_protocol_vcont_packet_cmd (char*,int,int *) ;

__attribute__((used)) static void
show_remote_cmd (char *args, int from_tty)
{


  show_remote_protocol_Z_packet_cmd (args, from_tty, ((void*)0));
  show_remote_protocol_e_packet_cmd (args, from_tty, ((void*)0));
  show_remote_protocol_E_packet_cmd (args, from_tty, ((void*)0));
  show_remote_protocol_P_packet_cmd (args, from_tty, ((void*)0));
  show_remote_protocol_qSymbol_packet_cmd (args, from_tty, ((void*)0));
  show_remote_protocol_vcont_packet_cmd (args, from_tty, ((void*)0));
  show_remote_protocol_binary_download_cmd (args, from_tty, ((void*)0));
  show_remote_protocol_qPart_auxv_packet_cmd (args, from_tty, ((void*)0));
  show_remote_protocol_qPart_dirty_packet_cmd (args, from_tty, ((void*)0));
}
