
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static const char *speed_str(uint8_t speed)
{
 switch (speed) {
 case 1: return "2.5 Gbps";
 case 2: return "5.0 Gbps";

 case 4:
 case 8: return "10.0 Gbps";

 case 16: return "14.0 Gbps";
 case 32: return "25.0 Gbps";
 case 64: return "50.0 Gbps";
 default: return "invalid speed";
 }
}
