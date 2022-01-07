
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int sq_size; int rq_size; int sqe_avail; int rqe_avail; int state; struct ds_smsg* smsg_free; void* sbuf; void* dmsg; } ;
struct ds_smsg {struct ds_smsg* next; } ;


 int ENOMEM ;
 int ERR (int ) ;
 int RS_SNDLOWAT ;
 int RS_SVC_ADD_DGRAM ;
 void* calloc (int,int) ;
 int ds_set_qp_size (struct rsocket*) ;
 int rs_notify_svc (int *,struct rsocket*,int ) ;
 int rs_readable ;
 int rs_writable ;
 int udp_svc ;

__attribute__((used)) static int ds_init_ep(struct rsocket *rs)
{
 struct ds_smsg *msg;
 int i, ret;

 ds_set_qp_size(rs);

 rs->sbuf = calloc(rs->sq_size, RS_SNDLOWAT);
 if (!rs->sbuf)
  return ERR(ENOMEM);

 rs->dmsg = calloc(rs->rq_size + 1, sizeof(*rs->dmsg));
 if (!rs->dmsg)
  return ERR(ENOMEM);

 rs->sqe_avail = rs->sq_size;
 rs->rqe_avail = rs->rq_size;

 rs->smsg_free = (struct ds_smsg *) rs->sbuf;
 msg = rs->smsg_free;
 for (i = 0; i < rs->sq_size - 1; i++) {
  msg->next = (void *) msg + RS_SNDLOWAT;
  msg = msg->next;
 }
 msg->next = ((void*)0);

 ret = rs_notify_svc(&udp_svc, rs, RS_SVC_ADD_DGRAM);
 if (ret)
  return ret;

 rs->state = rs_readable | rs_writable;
 return 0;
}
