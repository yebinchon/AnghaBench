
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ntohl (int const) ;

__attribute__((used)) static inline uint32_t
EXTRACT_32BITS(const void *p)
{
 return ((uint32_t)ntohl(*(const uint32_t *)(p)));
}
