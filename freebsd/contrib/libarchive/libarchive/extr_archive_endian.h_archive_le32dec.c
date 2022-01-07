
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;



__attribute__((used)) static inline uint32_t
archive_le32dec(const void *pp)
{
 unsigned char const *p = (unsigned char const *)pp;




 unsigned int p3 = p[3];
 unsigned int p2 = p[2];
 unsigned int p1 = p[1];
 unsigned int p0 = p[0];

 return ((p3 << 24) | (p2 << 16) | (p1 << 8) | p0);
}
