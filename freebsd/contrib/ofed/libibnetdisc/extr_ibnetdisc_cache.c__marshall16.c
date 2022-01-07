
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int num ;



__attribute__((used)) static size_t _marshall16(uint8_t * outbuf, uint16_t num)
{
 outbuf[0] = num & 0x00FF;
 outbuf[1] = (num & 0xFF00) >> 8;

 return (sizeof(num));
}
