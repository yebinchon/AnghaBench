
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fst_iface {int dummy; } ;
struct fst_get_peer_ctx {int dummy; } ;
typedef int Boolean ;


 int ETH_ALEN ;
 int FALSE ;
 int TRUE ;
 int * fst_iface_get_peer_first (struct fst_iface*,struct fst_get_peer_ctx**,int ) ;
 int * fst_iface_get_peer_next (struct fst_iface*,struct fst_get_peer_ctx**,int ) ;
 scalar_t__ os_memcmp (int const*,int const*,int ) ;

Boolean fst_iface_is_connected(struct fst_iface *iface, const u8 *addr,
          Boolean mb_only)
{
 struct fst_get_peer_ctx *ctx;
 const u8 *a = fst_iface_get_peer_first(iface, &ctx, mb_only);

 for (; a != ((void*)0); a = fst_iface_get_peer_next(iface, &ctx, mb_only))
  if (os_memcmp(addr, a, ETH_ALEN) == 0)
   return TRUE;

 return FALSE;
}
