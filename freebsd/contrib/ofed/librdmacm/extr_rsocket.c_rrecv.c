
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct rsocket {scalar_t__ type; int state; size_t rmsg_head; int rq_size; size_t rbuf_size; size_t rbuf_offset; size_t rbuf_bytes_avail; int rlock; int * rbuf; TYPE_1__* rmsg; int rseq_no; } ;
typedef int ssize_t ;
struct TYPE_2__ {size_t data; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINPROGRESS ;
 int MSG_PEEK ;
 int MSG_WAITALL ;
 scalar_t__ SOCK_DGRAM ;
 int ds_recvfrom (struct rsocket*,void*,size_t,int,int *,int *) ;
 scalar_t__ errno ;
 int fastlock_acquire (int *) ;
 int fastlock_release (int *) ;
 int idm ;
 struct rsocket* idm_at (int *,int) ;
 int memcpy (void*,int *,size_t) ;
 int rs_conn_have_rdata ;
 int rs_do_connect (struct rsocket*) ;
 int rs_get_comp (struct rsocket*,int ,int ) ;
 scalar_t__ rs_have_rdata (struct rsocket*) ;
 int rs_nonblocking (struct rsocket*,int) ;
 int rs_opening ;
 size_t rs_peek (struct rsocket*,void*,size_t) ;
 int rs_readable ;

ssize_t rrecv(int socket, void *buf, size_t len, int flags)
{
 struct rsocket *rs;
 size_t left = len;
 uint32_t end_size, rsize;
 int ret = 0;

 rs = idm_at(&idm, socket);
 if (rs->type == SOCK_DGRAM) {
  fastlock_acquire(&rs->rlock);
  ret = ds_recvfrom(rs, buf, len, flags, ((void*)0), ((void*)0));
  fastlock_release(&rs->rlock);
  return ret;
 }

 if (rs->state & rs_opening) {
  ret = rs_do_connect(rs);
  if (ret) {
   if (errno == EINPROGRESS)
    errno = EAGAIN;
   return ret;
  }
 }
 fastlock_acquire(&rs->rlock);
 do {
  if (!rs_have_rdata(rs)) {
   ret = rs_get_comp(rs, rs_nonblocking(rs, flags),
       rs_conn_have_rdata);
   if (ret)
    break;
  }

  if (flags & MSG_PEEK) {
   left = len - rs_peek(rs, buf, left);
   break;
  }

  for (; left && rs_have_rdata(rs); left -= rsize) {
   if (left < rs->rmsg[rs->rmsg_head].data) {
    rsize = left;
    rs->rmsg[rs->rmsg_head].data -= left;
   } else {
    rs->rseq_no++;
    rsize = rs->rmsg[rs->rmsg_head].data;
    if (++rs->rmsg_head == rs->rq_size + 1)
     rs->rmsg_head = 0;
   }

   end_size = rs->rbuf_size - rs->rbuf_offset;
   if (rsize > end_size) {
    memcpy(buf, &rs->rbuf[rs->rbuf_offset], end_size);
    rs->rbuf_offset = 0;
    buf += end_size;
    rsize -= end_size;
    left -= end_size;
    rs->rbuf_bytes_avail += end_size;
   }
   memcpy(buf, &rs->rbuf[rs->rbuf_offset], rsize);
   rs->rbuf_offset += rsize;
   buf += rsize;
   rs->rbuf_bytes_avail += rsize;
  }

 } while (left && (flags & MSG_WAITALL) && (rs->state & rs_readable));

 fastlock_release(&rs->rlock);
 return (ret && left == len) ? ret : len - left;
}
