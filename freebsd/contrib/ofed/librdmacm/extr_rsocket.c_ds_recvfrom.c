
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rsocket {int state; size_t rmsg_head; int rq_size; int rqe_avail; struct ds_rmsg* dmsg; } ;
struct ds_rmsg {size_t length; scalar_t__ offset; TYPE_1__* qp; } ;
struct ds_header {size_t length; } ;
typedef int ssize_t ;
typedef int socklen_t ;
struct TYPE_2__ {scalar_t__ rbuf; } ;


 int EINVAL ;
 int ERR (int ) ;
 int MSG_PEEK ;
 int ds_get_comp (struct rsocket*,int ,int (*) (struct rsocket*)) ;
 int ds_post_recv (struct rsocket*,TYPE_1__*,scalar_t__) ;
 int ds_set_src (struct sockaddr*,int *,struct ds_header*) ;
 int memcpy (void*,void*,size_t) ;
 int rs_have_rdata (struct rsocket*) ;
 int rs_nonblocking (struct rsocket*,int) ;
 int rs_readable ;

__attribute__((used)) static ssize_t ds_recvfrom(struct rsocket *rs, void *buf, size_t len, int flags,
      struct sockaddr *src_addr, socklen_t *addrlen)
{
 struct ds_rmsg *rmsg;
 struct ds_header *hdr;
 int ret;

 if (!(rs->state & rs_readable))
  return ERR(EINVAL);

 if (!rs_have_rdata(rs)) {
  ret = ds_get_comp(rs, rs_nonblocking(rs, flags),
      rs_have_rdata);
  if (ret)
   return ret;
 }

 rmsg = &rs->dmsg[rs->rmsg_head];
 hdr = (struct ds_header *) (rmsg->qp->rbuf + rmsg->offset);
 if (len > rmsg->length - hdr->length)
  len = rmsg->length - hdr->length;

 memcpy(buf, (void *) hdr + hdr->length, len);
 if (addrlen)
  ds_set_src(src_addr, addrlen, hdr);

 if (!(flags & MSG_PEEK)) {
  ds_post_recv(rs, rmsg->qp, rmsg->offset);
  if (++rs->rmsg_head == rs->rq_size + 1)
   rs->rmsg_head = 0;
  rs->rqe_avail++;
 }

 return len;
}
