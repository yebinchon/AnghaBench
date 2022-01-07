
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int num ;



__attribute__((used)) static size_t _marshall8(uint8_t * outbuf, uint8_t num)
{
 outbuf[0] = num;

 return (sizeof(num));
}
