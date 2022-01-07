
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_ext {int ip6e_len; } ;
typedef int socklen_t ;



int
inet6_opt_init(void *extbuf, socklen_t extlen)
{
 struct ip6_ext *ext = (struct ip6_ext *)extbuf;

 if (ext) {
  if (extlen <= 0 || (extlen % 8))
   return(-1);
  ext->ip6e_len = (extlen >> 3) - 1;
 }

 return(2);
}
