
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_data {int dummy; } ;


 int * p2p_get_device (struct p2p_data*,int const*) ;

int p2p_peer_known(struct p2p_data *p2p, const u8 *addr)
{
 return p2p_get_device(p2p, addr) != ((void*)0);
}
