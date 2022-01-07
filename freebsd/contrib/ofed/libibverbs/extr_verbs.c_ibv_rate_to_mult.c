
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ibv_rate { ____Placeholder_ibv_rate } ibv_rate ;
int __attribute__((const)) ibv_rate_to_mult(enum ibv_rate rate)
{
 switch (rate) {
 case 136: return 1;
 case 131: return 2;
 case 140: return 4;
 case 138: return 8;
 case 135: return 12;
 case 133: return 16;
 case 129: return 24;
 case 128: return 32;
 case 139: return 48;
 case 137: return 11;
 case 132: return 20;
 case 134: return 160;
 case 130: return 240;
 default: return -1;
 }
}
