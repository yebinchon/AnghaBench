
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_neigh_handler {int src; } ;
struct addrinfo {int ai_addr; } ;


 int ENODEV ;
 scalar_t__ ENXIO ;
 scalar_t__ errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int get_ifindex (int ) ;
 int nl_addr_info (int ,struct addrinfo**) ;

int neigh_get_oif_from_src(struct get_neigh_handler *neigh_handler)
{
 int oif = -ENODEV;
 struct addrinfo *src_info;
 int err;

 err = nl_addr_info(neigh_handler->src, &src_info);
 if (err) {
  if (!errno)
   errno = ENXIO;
  return oif;
 }

 oif = get_ifindex(src_info->ai_addr);
 if (oif <= 0)
  goto free;

free:
 freeaddrinfo(src_info);
 return oif;
}
