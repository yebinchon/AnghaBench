
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int le32 (int const*) ;

__attribute__((used)) static uint64_t le64(const void *_p) {
 const uint8_t *p = _p;
 return le32(p) | ((uint64_t)le32(p + 4) << 32);
}
