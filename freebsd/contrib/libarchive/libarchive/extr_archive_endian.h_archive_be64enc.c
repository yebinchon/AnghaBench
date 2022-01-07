
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int archive_be32enc (unsigned char*,int ) ;

__attribute__((used)) static inline void
archive_be64enc(void *pp, uint64_t u)
{
 unsigned char *p = (unsigned char *)pp;

 archive_be32enc(p, (uint32_t)(u >> 32));
 archive_be32enc(p + 4, (uint32_t)(u & 0xffffffff));
}
