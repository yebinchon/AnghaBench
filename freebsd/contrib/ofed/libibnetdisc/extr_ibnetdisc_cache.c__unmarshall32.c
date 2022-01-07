
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static size_t _unmarshall32(uint8_t * inbuf, uint32_t * num)
{
 (*num) = (uint32_t) inbuf[0];
 (*num) |= ((uint32_t) inbuf[1] << 8);
 (*num) |= ((uint32_t) inbuf[2] << 16);
 (*num) |= ((uint32_t) inbuf[3] << 24);

 return (sizeof(*num));
}
