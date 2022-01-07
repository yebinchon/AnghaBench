
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;






int
ssh_packet_log_type(u_char type)
{
 switch (type) {
 case 130:
 case 129:
 case 128:
  return 0;
 default:
  return 1;
 }
}
