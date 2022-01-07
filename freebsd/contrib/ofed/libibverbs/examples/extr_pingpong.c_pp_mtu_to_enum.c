
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ibv_mtu { ____Placeholder_ibv_mtu } ibv_mtu ;


 int IBV_MTU_1024 ;
 int IBV_MTU_2048 ;
 int IBV_MTU_256 ;
 int IBV_MTU_4096 ;
 int IBV_MTU_512 ;

enum ibv_mtu pp_mtu_to_enum(int mtu)
{
 switch (mtu) {
 case 256: return IBV_MTU_256;
 case 512: return IBV_MTU_512;
 case 1024: return IBV_MTU_1024;
 case 2048: return IBV_MTU_2048;
 case 4096: return IBV_MTU_4096;
 default: return 0;
 }
}
