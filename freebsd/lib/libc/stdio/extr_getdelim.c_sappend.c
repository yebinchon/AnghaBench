
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ expandtofit (char**,size_t,size_t*) ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static int
sappend(char ** __restrict dstp, size_t * __restrict dstlenp,
 size_t * __restrict dstcapp, char * __restrict src, size_t srclen)
{


 if (expandtofit(dstp, srclen + *dstlenp + 1, dstcapp))
  return (-1);
 memcpy(*dstp + *dstlenp, src, srclen);
 *dstlenp += srclen;
 return (0);
}
