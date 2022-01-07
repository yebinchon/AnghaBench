
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static const char *width_str(uint8_t width)
{
 switch (width) {
 case 1: return "1";
 case 2: return "4";
 case 4: return "8";
 case 8: return "12";
 case 16: return "2";
 default: return "invalid width";
 }
}
