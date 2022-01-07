
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int htonl (int const) ;

__attribute__((used)) static __inline void
ntohlp(void *dst, const void *src)
{

 *(uint32_t *)dst = htonl(*(const uint32_t *)src);
}
