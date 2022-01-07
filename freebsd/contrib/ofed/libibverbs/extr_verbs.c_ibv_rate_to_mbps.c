
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ibv_rate { ____Placeholder_ibv_rate } ibv_rate ;
int __attribute__((const)) ibv_rate_to_mbps(enum ibv_rate rate)
{
 switch (rate) {
 case 138: return 2500;
 case 131: return 5000;
 case 147: return 10000;
 case 141: return 20000;
 case 136: return 30000;
 case 134: return 40000;
 case 129: return 60000;
 case 128: return 80000;
 case 145: return 120000;
 case 144: return 14062;
 case 132: return 56250;
 case 146: return 112500;
 case 143: return 168750;
 case 140: return 25781;
 case 148: return 103125;
 case 142: return 206250;
 case 137: return 309375;
 case 139: return 28125;
 case 133: return 53125;
 case 135: return 425000;
 case 130: return 637500;
 default: return -1;
 }
}
