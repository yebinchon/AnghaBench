
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_addrinfo {int ai_flags; scalar_t__ ai_src_len; int ai_src_addr; scalar_t__ ai_dst_len; int ai_dst_addr; int ai_port_space; int ai_qp_type; int ai_family; } ;


 int EINVAL ;
 int ENOMEM ;
 int ERR (int ) ;
 int RAI_PASSIVE ;
 struct rdma_addrinfo* calloc (int,int) ;
 struct rdma_addrinfo nohints ;
 int rdma_freeaddrinfo (struct rdma_addrinfo*) ;
 int ucma_copy_addr (int *,scalar_t__*,int ,scalar_t__) ;
 int ucma_getaddrinfo (char const*,char const*,struct rdma_addrinfo const*,struct rdma_addrinfo*) ;
 int ucma_ib_resolve (struct rdma_addrinfo**,struct rdma_addrinfo const*) ;
 int ucma_init () ;

int rdma_getaddrinfo(const char *node, const char *service,
       const struct rdma_addrinfo *hints,
       struct rdma_addrinfo **res)
{
 struct rdma_addrinfo *rai;
 int ret;

 if (!service && !node && !hints)
  return ERR(EINVAL);

 ret = ucma_init();
 if (ret)
  return ret;

 rai = calloc(1, sizeof(*rai));
 if (!rai)
  return ERR(ENOMEM);

 if (!hints)
  hints = &nohints;

 if (node || service) {
  ret = ucma_getaddrinfo(node, service, hints, rai);
 } else {
  rai->ai_flags = hints->ai_flags;
  rai->ai_family = hints->ai_family;
  rai->ai_qp_type = hints->ai_qp_type;
  rai->ai_port_space = hints->ai_port_space;
  if (hints->ai_dst_len) {
   ret = ucma_copy_addr(&rai->ai_dst_addr, &rai->ai_dst_len,
          hints->ai_dst_addr, hints->ai_dst_len);
  }
 }
 if (ret)
  goto err;

 if (!rai->ai_src_len && hints->ai_src_len) {
  ret = ucma_copy_addr(&rai->ai_src_addr, &rai->ai_src_len,
         hints->ai_src_addr, hints->ai_src_len);
  if (ret)
   goto err;
 }

 if (!(rai->ai_flags & RAI_PASSIVE))
  ucma_ib_resolve(&rai, hints);

 *res = rai;
 return 0;

err:
 rdma_freeaddrinfo(rai);
 return ret;
}
