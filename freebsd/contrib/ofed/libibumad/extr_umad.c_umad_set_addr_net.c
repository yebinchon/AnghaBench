
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sl; void* qkey; int lid; void* qpn; } ;
struct ib_user_mad {TYPE_1__ addr; } ;
typedef void* __be32 ;
typedef int __be16 ;


 int TRACE (char*,void*,int ,int ,int,int ) ;
 int be16toh (int ) ;
 int be32toh (void*) ;

int umad_set_addr_net(void *umad, __be16 dlid, __be32 dqp, int sl, __be32 qkey)
{
 struct ib_user_mad *mad = umad;

 TRACE("umad %p dlid %u dqp %d sl %d qkey %x",
       umad, be16toh(dlid), be32toh(dqp), sl, be32toh(qkey));
 mad->addr.qpn = dqp;
 mad->addr.lid = dlid;
 mad->addr.qkey = qkey;
 mad->addr.sl = sl;

 return 0;
}
