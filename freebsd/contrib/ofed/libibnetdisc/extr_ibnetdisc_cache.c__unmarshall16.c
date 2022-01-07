
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static size_t _unmarshall16(uint8_t * inbuf, uint16_t * num)
{
 (*num) = ((uint16_t) inbuf[1] << 8) | inbuf[0];

 return (sizeof(*num));
}
