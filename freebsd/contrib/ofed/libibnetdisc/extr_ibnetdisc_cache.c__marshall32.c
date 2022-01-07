
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int num ;



__attribute__((used)) static size_t _marshall32(uint8_t * outbuf, uint32_t num)
{
 outbuf[0] = num & 0x000000FF;
 outbuf[1] = (num & 0x0000FF00) >> 8;
 outbuf[2] = (num & 0x00FF0000) >> 16;
 outbuf[3] = (num & 0xFF000000) >> 24;

 return (sizeof(num));
}
