
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int le16 (int const*) ;

__attribute__((used)) static uint32_t le32(const void *_p) {
 const uint8_t *p = _p;
 return le16(p) | ((uint32_t)le16(p + 2) << 16);
}
