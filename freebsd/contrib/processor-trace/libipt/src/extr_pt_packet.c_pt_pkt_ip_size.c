
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;
 int pte_bad_packet ;

__attribute__((used)) static int pt_pkt_ip_size(enum pt_ip_compression ipc)
{
 switch (ipc) {
 case 131:
  return 0;

 case 130:
  return 2;

 case 129:
  return 4;

 case 128:
 case 132:
  return 6;

 case 133:
  return 8;
 }

 return -pte_bad_packet;
}
