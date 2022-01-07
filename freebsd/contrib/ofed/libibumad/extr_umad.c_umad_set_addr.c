
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sl; void* qkey; int lid; void* qpn; } ;
struct ib_user_mad {TYPE_1__ addr; } ;


 int TRACE (char*,void*,int,int,int,int) ;
 int htobe16 (int) ;
 void* htobe32 (int) ;

int umad_set_addr(void *umad, int dlid, int dqp, int sl, int qkey)
{
 struct ib_user_mad *mad = umad;

 TRACE("umad %p dlid %u dqp %d sl %d, qkey %x",
       umad, dlid, dqp, sl, qkey);
 mad->addr.qpn = htobe32(dqp);
 mad->addr.lid = htobe16(dlid);
 mad->addr.qkey = htobe32(qkey);
 mad->addr.sl = sl;

 return 0;
}
