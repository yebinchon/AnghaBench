
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_channels {int dummy; } ;


 int os_memcpy (struct p2p_channels*,struct p2p_channels const*,int) ;
 int p2p_channels_union_inplace (struct p2p_channels*,struct p2p_channels const*) ;

void p2p_channels_union(const struct p2p_channels *a,
   const struct p2p_channels *b,
   struct p2p_channels *res)
{
 os_memcpy(res, a, sizeof(*res));
 p2p_channels_union_inplace(res, b);
}
