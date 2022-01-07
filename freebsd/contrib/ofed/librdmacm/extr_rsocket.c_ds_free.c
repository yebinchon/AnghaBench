
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {scalar_t__ udp_sock; scalar_t__ index; scalar_t__ epfd; int slock; int rlock; int cq_lock; int cq_wait_lock; int map_lock; int dest_map; struct rsocket* sbuf; struct ds_qp* qp_list; struct rsocket* dmsg; } ;
struct ds_qp {int dummy; } ;


 int close (scalar_t__) ;
 int ds_free_qp (struct ds_qp*) ;
 int ds_remove_qp (struct rsocket*,struct ds_qp*) ;
 int fastlock_destroy (int *) ;
 int free (struct rsocket*) ;
 int rs_remove (struct rsocket*) ;
 int tdestroy (int ,int (*) (struct rsocket*)) ;

__attribute__((used)) static void ds_free(struct rsocket *rs)
{
 struct ds_qp *qp;

 if (rs->udp_sock >= 0)
  close(rs->udp_sock);

 if (rs->index >= 0)
  rs_remove(rs);

 if (rs->dmsg)
  free(rs->dmsg);

 while ((qp = rs->qp_list)) {
  ds_remove_qp(rs, qp);
  ds_free_qp(qp);
 }

 if (rs->epfd >= 0)
  close(rs->epfd);

 if (rs->sbuf)
  free(rs->sbuf);

 tdestroy(rs->dest_map, free);
 fastlock_destroy(&rs->map_lock);
 fastlock_destroy(&rs->cq_wait_lock);
 fastlock_destroy(&rs->cq_lock);
 fastlock_destroy(&rs->rlock);
 fastlock_destroy(&rs->slock);
 free(rs);
}
