
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int archive_le32dec (unsigned char const*) ;

__attribute__((used)) static inline uint64_t
archive_le64dec(const void *pp)
{
 unsigned char const *p = (unsigned char const *)pp;

 return (((uint64_t)archive_le32dec(p + 4) << 32) | archive_le32dec(p));
}
