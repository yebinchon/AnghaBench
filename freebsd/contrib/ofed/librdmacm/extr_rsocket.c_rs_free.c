
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rsocket {scalar_t__ type; scalar_t__ index; int slock; int rlock; int cq_lock; int cq_wait_lock; int map_lock; TYPE_1__* cm_id; int unack_cqe; struct rsocket* target_buffer_list; scalar_t__ target_mr; struct rsocket* rbuf; scalar_t__ rmr; struct rsocket* sbuf; scalar_t__ smr; struct rsocket* rmsg; } ;
struct TYPE_3__ {int recv_cq; scalar_t__ qp; } ;


 scalar_t__ SOCK_DGRAM ;
 int ds_free (struct rsocket*) ;
 int fastlock_destroy (int *) ;
 int free (struct rsocket*) ;
 int ibv_ack_cq_events (int ,int ) ;
 int rdma_dereg_mr (scalar_t__) ;
 int rdma_destroy_id (TYPE_1__*) ;
 int rdma_destroy_qp (TYPE_1__*) ;
 int rs_free_iomappings (struct rsocket*) ;
 int rs_remove (struct rsocket*) ;

__attribute__((used)) static void rs_free(struct rsocket *rs)
{
 if (rs->type == SOCK_DGRAM) {
  ds_free(rs);
  return;
 }

 if (rs->rmsg)
  free(rs->rmsg);

 if (rs->sbuf) {
  if (rs->smr)
   rdma_dereg_mr(rs->smr);
  free(rs->sbuf);
 }

 if (rs->rbuf) {
  if (rs->rmr)
   rdma_dereg_mr(rs->rmr);
  free(rs->rbuf);
 }

 if (rs->target_buffer_list) {
  if (rs->target_mr)
   rdma_dereg_mr(rs->target_mr);
  free(rs->target_buffer_list);
 }

 if (rs->cm_id) {
  rs_free_iomappings(rs);
  if (rs->cm_id->qp) {
   ibv_ack_cq_events(rs->cm_id->recv_cq, rs->unack_cqe);
   rdma_destroy_qp(rs->cm_id);
  }
  rdma_destroy_id(rs->cm_id);
 }

 if (rs->index >= 0)
  rs_remove(rs);

 fastlock_destroy(&rs->map_lock);
 fastlock_destroy(&rs->cq_wait_lock);
 fastlock_destroy(&rs->cq_lock);
 fastlock_destroy(&rs->rlock);
 fastlock_destroy(&rs->slock);
 free(rs);
}
