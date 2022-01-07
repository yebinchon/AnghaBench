
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PacketGetVersion () ;
 char* malloc (size_t) ;
 char const* pcap_lib_version_string ;
 int pcap_snprintf (char*,size_t,int ,char*) ;
 int pcap_version_string_packet_dll_fmt ;
 int strlen (char*) ;

const char *
pcap_lib_version(void)
{
 char *packet_version_string;
 size_t full_pcap_version_string_len;
 char *full_pcap_version_string;

 if (pcap_lib_version_string == ((void*)0)) {







  packet_version_string = PacketGetVersion();
  full_pcap_version_string_len =
      (sizeof pcap_version_string_packet_dll_fmt - 2) +
      strlen(packet_version_string);
  full_pcap_version_string = malloc(full_pcap_version_string_len);
  if (full_pcap_version_string == ((void*)0))
   return (((void*)0));
  pcap_snprintf(full_pcap_version_string,
      full_pcap_version_string_len,
      pcap_version_string_packet_dll_fmt,
      packet_version_string);
  pcap_lib_version_string = full_pcap_version_string;
 }
 return (pcap_lib_version_string);
}
