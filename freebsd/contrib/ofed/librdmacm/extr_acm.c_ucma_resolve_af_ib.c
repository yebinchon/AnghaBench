
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_addrinfo {int ai_route_len; struct rdma_addrinfo* ai_next; void* ai_dst_canonname; void* ai_src_canonname; void* ai_route; int ai_port_space; int ai_qp_type; int ai_family; int ai_flags; } ;


 int AF_IB ;
 void* calloc (int,int) ;
 int memcpy (void*,void*,int) ;
 int rdma_freeaddrinfo (struct rdma_addrinfo*) ;
 void* strdup (void*) ;
 scalar_t__ ucma_ib_set_addr (struct rdma_addrinfo*,struct rdma_addrinfo*) ;
 scalar_t__ ucma_ib_set_connect (struct rdma_addrinfo*,struct rdma_addrinfo*) ;

__attribute__((used)) static void ucma_resolve_af_ib(struct rdma_addrinfo **rai)
{
 struct rdma_addrinfo *ib_rai;

 ib_rai = calloc(1, sizeof(*ib_rai));
 if (!ib_rai)
  return;

 ib_rai->ai_flags = (*rai)->ai_flags;
 ib_rai->ai_family = AF_IB;
 ib_rai->ai_qp_type = (*rai)->ai_qp_type;
 ib_rai->ai_port_space = (*rai)->ai_port_space;

 ib_rai->ai_route = calloc(1, (*rai)->ai_route_len);
 if (!ib_rai->ai_route)
  goto err;

 memcpy(ib_rai->ai_route, (*rai)->ai_route, (*rai)->ai_route_len);
 ib_rai->ai_route_len = (*rai)->ai_route_len;

 if ((*rai)->ai_src_canonname) {
  ib_rai->ai_src_canonname = strdup((*rai)->ai_src_canonname);
  if (!ib_rai->ai_src_canonname)
   goto err;
 }

 if ((*rai)->ai_dst_canonname) {
  ib_rai->ai_dst_canonname = strdup((*rai)->ai_dst_canonname);
  if (!ib_rai->ai_dst_canonname)
   goto err;
 }

 if (ucma_ib_set_connect(ib_rai, *rai))
  goto err;

 if (ucma_ib_set_addr(ib_rai, *rai))
  goto err;

 ib_rai->ai_next = *rai;
 *rai = ib_rai;
 return;

err:
 rdma_freeaddrinfo(ib_rai);
}
