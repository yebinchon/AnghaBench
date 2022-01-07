
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;



__attribute__((used)) static inline uint32_t
archive_be32dec(const void *pp)
{
 unsigned char const *p = (unsigned char const *)pp;




 unsigned int p3 = p[3];
 unsigned int p2 = p[2];
 unsigned int p1 = p[1];
 unsigned int p0 = p[0];

 return ((p0 << 24) | (p1 << 16) | (p2 << 8) | p3);
}
