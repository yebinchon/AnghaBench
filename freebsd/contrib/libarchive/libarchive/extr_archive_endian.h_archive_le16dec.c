
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;



__attribute__((used)) static inline uint16_t
archive_le16dec(const void *pp)
{
 unsigned char const *p = (unsigned char const *)pp;




 unsigned int p1 = p[1];
 unsigned int p0 = p[0];

 return ((p1 << 8) | p0);
}
