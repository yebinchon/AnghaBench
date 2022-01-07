
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint16_t ;



__attribute__((used)) static uint16_t le16(const void *_p) {
 const uint8_t *p = _p;
 return p[0] | (p[1] << 8);
}
