
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;






__attribute__((used)) static const char *link_layer_str(uint8_t link_layer)
{
 switch (link_layer) {
 case 128:
 case 129:
  return "InfiniBand";
 case 130:
  return "Ethernet";
 default:
  return "Unknown";
 }
}
