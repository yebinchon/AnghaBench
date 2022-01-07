
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* PCAP_VERSION_STRING ;

const char *
pcap_lib_version(void)
{
 return (PCAP_VERSION_STRING);
}
