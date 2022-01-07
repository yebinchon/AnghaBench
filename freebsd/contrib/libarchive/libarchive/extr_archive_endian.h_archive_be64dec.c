
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int archive_be32dec (unsigned char const*) ;

__attribute__((used)) static inline uint64_t
archive_be64dec(const void *pp)
{
 unsigned char const *p = (unsigned char const *)pp;

 return (((uint64_t)archive_be32dec(p) << 32) | archive_be32dec(p + 4));
}
