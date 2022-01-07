
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int type; int index; int udp_sock; int epfd; int iomap_queue; int iomap_list; int map_lock; int cq_wait_lock; int cq_lock; int rlock; int slock; int target_iomap_size; int ctrl_max_seqno; int rq_size; int sq_size; int sq_inline; int rbuf_size; int sbuf_size; } ;


 int RS_QP_CTRL_SIZE ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 struct rsocket* calloc (int,int) ;
 int def_inline ;
 int def_iomap_size ;
 int def_mem ;
 int def_rqsize ;
 int def_sqsize ;
 int def_wmem ;
 int dlist_init (int *) ;
 int fastlock_init (int *) ;

__attribute__((used)) static struct rsocket *rs_alloc(struct rsocket *inherited_rs, int type)
{
 struct rsocket *rs;

 rs = calloc(1, sizeof(*rs));
 if (!rs)
  return ((void*)0);

 rs->type = type;
 rs->index = -1;
 if (type == SOCK_DGRAM) {
  rs->udp_sock = -1;
  rs->epfd = -1;
 }

 if (inherited_rs) {
  rs->sbuf_size = inherited_rs->sbuf_size;
  rs->rbuf_size = inherited_rs->rbuf_size;
  rs->sq_inline = inherited_rs->sq_inline;
  rs->sq_size = inherited_rs->sq_size;
  rs->rq_size = inherited_rs->rq_size;
  if (type == SOCK_STREAM) {
   rs->ctrl_max_seqno = inherited_rs->ctrl_max_seqno;
   rs->target_iomap_size = inherited_rs->target_iomap_size;
  }
 } else {
  rs->sbuf_size = def_wmem;
  rs->rbuf_size = def_mem;
  rs->sq_inline = def_inline;
  rs->sq_size = def_sqsize;
  rs->rq_size = def_rqsize;
  if (type == SOCK_STREAM) {
   rs->ctrl_max_seqno = RS_QP_CTRL_SIZE;
   rs->target_iomap_size = def_iomap_size;
  }
 }
 fastlock_init(&rs->slock);
 fastlock_init(&rs->rlock);
 fastlock_init(&rs->cq_lock);
 fastlock_init(&rs->cq_wait_lock);
 fastlock_init(&rs->map_lock);
 dlist_init(&rs->iomap_list);
 dlist_init(&rs->iomap_queue);
 return rs;
}
