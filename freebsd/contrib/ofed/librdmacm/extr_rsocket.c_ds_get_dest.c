
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union socket_addr {int dummy; } socket_addr ;
struct sockaddr {int dummy; } ;
struct rsocket {int map_lock; int dest_map; } ;
struct ds_qp {int dummy; } ;
struct ds_dest {int addr; struct ds_qp* qp; } ;
typedef int socklen_t ;


 int ENOMEM ;
 int ERR (int ) ;
 struct ds_dest* calloc (int,int) ;
 int ds_compare_addr ;
 int ds_get_qp (struct rsocket*,union socket_addr*,int ,struct ds_qp**) ;
 int ds_get_src_addr (struct rsocket*,struct sockaddr const*,int ,union socket_addr*,int *) ;
 int fastlock_acquire (int *) ;
 int fastlock_release (int *) ;
 int memcpy (int *,struct sockaddr const*,int ) ;
 struct ds_dest** tfind (struct sockaddr const*,int *,int ) ;
 struct ds_dest** tsearch (int *,int *,int ) ;

__attribute__((used)) static int ds_get_dest(struct rsocket *rs, const struct sockaddr *addr,
         socklen_t addrlen, struct ds_dest **dest)
{
 union socket_addr src_addr;
 socklen_t src_len;
 struct ds_qp *qp;
 struct ds_dest **tdest, *new_dest;
 int ret = 0;

 fastlock_acquire(&rs->map_lock);
 tdest = tfind(addr, &rs->dest_map, ds_compare_addr);
 if (tdest)
  goto found;

 ret = ds_get_src_addr(rs, addr, addrlen, &src_addr, &src_len);
 if (ret)
  goto out;

 ret = ds_get_qp(rs, &src_addr, src_len, &qp);
 if (ret)
  goto out;

 tdest = tfind(addr, &rs->dest_map, ds_compare_addr);
 if (!tdest) {
  new_dest = calloc(1, sizeof(*new_dest));
  if (!new_dest) {
   ret = ERR(ENOMEM);
   goto out;
  }

  memcpy(&new_dest->addr, addr, addrlen);
  new_dest->qp = qp;
  tdest = tsearch(&new_dest->addr, &rs->dest_map, ds_compare_addr);
 }

found:
 *dest = *tdest;
out:
 fastlock_release(&rs->map_lock);
 return ret;
}
