
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ ntohs (int const) ;

__attribute__((used)) static inline uint16_t
EXTRACT_16BITS(const void *p)
{
 return ((uint16_t)ntohs(*(const uint16_t *)(p)));
}
