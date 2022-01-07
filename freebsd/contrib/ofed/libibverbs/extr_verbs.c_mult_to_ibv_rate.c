
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ibv_rate { ____Placeholder_ibv_rate } ibv_rate ;


 int IBV_RATE_10_GBPS ;
 int IBV_RATE_120_GBPS ;
 int IBV_RATE_20_GBPS ;
 int IBV_RATE_28_GBPS ;
 int IBV_RATE_2_5_GBPS ;
 int IBV_RATE_30_GBPS ;
 int IBV_RATE_400_GBPS ;
 int IBV_RATE_40_GBPS ;
 int IBV_RATE_50_GBPS ;
 int IBV_RATE_5_GBPS ;
 int IBV_RATE_600_GBPS ;
 int IBV_RATE_60_GBPS ;
 int IBV_RATE_80_GBPS ;
 int IBV_RATE_MAX ;

enum ibv_rate __attribute__((const)) mult_to_ibv_rate(int mult)
{
 switch (mult) {
 case 1: return IBV_RATE_2_5_GBPS;
 case 2: return IBV_RATE_5_GBPS;
 case 4: return IBV_RATE_10_GBPS;
 case 8: return IBV_RATE_20_GBPS;
 case 12: return IBV_RATE_30_GBPS;
 case 16: return IBV_RATE_40_GBPS;
 case 24: return IBV_RATE_60_GBPS;
 case 32: return IBV_RATE_80_GBPS;
 case 48: return IBV_RATE_120_GBPS;
 case 11: return IBV_RATE_28_GBPS;
 case 20: return IBV_RATE_50_GBPS;
 case 160: return IBV_RATE_400_GBPS;
 case 240: return IBV_RATE_600_GBPS;
 default: return IBV_RATE_MAX;
 }
}
