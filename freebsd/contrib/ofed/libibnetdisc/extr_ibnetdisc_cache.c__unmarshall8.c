
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static size_t _unmarshall8(uint8_t * inbuf, uint8_t * num)
{
 (*num) = inbuf[0];

 return (sizeof(*num));
}
