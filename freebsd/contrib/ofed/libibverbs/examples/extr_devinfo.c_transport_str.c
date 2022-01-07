
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ibv_transport_type { ____Placeholder_ibv_transport_type } ibv_transport_type ;







__attribute__((used)) static const char *transport_str(enum ibv_transport_type transport)
{
 switch (transport) {
 case 131: return "InfiniBand";
 case 130: return "iWARP";
 case 129: return "usNIC";
 case 128: return "usNIC UDP";
 default: return "invalid transport";
 }
}
