
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct iter_priv {int a; } ;
typedef int socklen_t ;


 int * addr_tree_lookup (int *,struct sockaddr_storage*,int ) ;

__attribute__((used)) static int
priv_lookup_addr(struct iter_priv* priv, struct sockaddr_storage* addr,
 socklen_t addrlen)
{
 return addr_tree_lookup(&priv->a, addr, addrlen) != ((void*)0);
}
