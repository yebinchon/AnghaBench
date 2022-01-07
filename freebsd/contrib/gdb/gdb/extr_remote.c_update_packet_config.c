
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_config {int detect; int support; } ;





 int PACKET_DISABLE ;
 int PACKET_ENABLE ;
 int PACKET_SUPPORT_UNKNOWN ;

__attribute__((used)) static void
update_packet_config (struct packet_config *config)
{
  switch (config->detect)
    {
    case 128:
      config->support = PACKET_ENABLE;
      break;
    case 129:
      config->support = PACKET_DISABLE;
      break;
    case 130:
      config->support = PACKET_SUPPORT_UNKNOWN;
      break;
    }
}
