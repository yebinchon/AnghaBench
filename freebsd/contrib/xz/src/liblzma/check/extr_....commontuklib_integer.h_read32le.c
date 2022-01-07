
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int conv32le (int ) ;

__attribute__((used)) static inline uint32_t
read32le(const uint8_t *buf)
{
 uint32_t num = *(const uint32_t *)buf;
 return conv32le(num);
}
