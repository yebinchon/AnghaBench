
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ibv_mtu { ____Placeholder_ibv_mtu } ibv_mtu ;
__attribute__((used)) static const char *mtu_str(enum ibv_mtu max_mtu)
{
 switch (max_mtu) {
 case 130: return "256";
 case 128: return "512";
 case 132: return "1024";
 case 131: return "2048";
 case 129: return "4096";
 default: return "invalid MTU";
 }
}
