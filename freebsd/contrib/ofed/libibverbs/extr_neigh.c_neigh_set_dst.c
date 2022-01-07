
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_neigh_handler {int * dst; } ;


 int * nl_addr_build (int,void*,size_t) ;

int neigh_set_dst(struct get_neigh_handler *neigh_handler,
    int family, void *buf, size_t size)
{
 neigh_handler->dst = nl_addr_build(family, buf, size);
 return neigh_handler->dst == ((void*)0);
}
