
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IBV_RAW_PACKET_CAP_CVLAN_STRIPPING ;
 int IBV_RAW_PACKET_CAP_IP_CSUM ;
 int IBV_RAW_PACKET_CAP_SCATTER_FCS ;
 int printf (char*) ;

__attribute__((used)) static void print_raw_packet_caps(uint32_t raw_packet_caps)
{
 printf("\traw packet caps:\n");
 if (raw_packet_caps & IBV_RAW_PACKET_CAP_CVLAN_STRIPPING)
  printf("\t\t\t\t\tC-VLAN stripping offload\n");
 if (raw_packet_caps & IBV_RAW_PACKET_CAP_SCATTER_FCS)
  printf("\t\t\t\t\tScatter FCS offload\n");
 if (raw_packet_caps & IBV_RAW_PACKET_CAP_IP_CSUM)
  printf("\t\t\t\t\tIP csum offload\n");
}
