
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_neigh_handler {int * found_ll_addr; } ;


 int EINVAL ;
 int memcpy (void*,int ,int) ;
 int nl_addr_get_binary_addr (int *) ;
 int nl_addr_get_len (int *) ;

int neigh_get_ll(struct get_neigh_handler *neigh_handler, void *addr_buff,
   int addr_size) {
 int neigh_len;

 if (neigh_handler->found_ll_addr == ((void*)0))
  return -EINVAL;

  neigh_len = nl_addr_get_len(neigh_handler->found_ll_addr);

 if (neigh_len > addr_size)
  return -EINVAL;

 memcpy(addr_buff, nl_addr_get_binary_addr(neigh_handler->found_ll_addr),
        neigh_len);

 return neigh_len;
}
