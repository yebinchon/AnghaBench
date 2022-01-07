
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct rsocket {int rmsg_head; int rbuf_offset; int rmsg_tail; int rq_size; size_t rbuf_size; int * rbuf; TYPE_1__* rmsg; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {size_t data; } ;


 int memcpy (void*,int *,size_t) ;

__attribute__((used)) static ssize_t rs_peek(struct rsocket *rs, void *buf, size_t len)
{
 size_t left = len;
 uint32_t end_size, rsize;
 int rmsg_head, rbuf_offset;

 rmsg_head = rs->rmsg_head;
 rbuf_offset = rs->rbuf_offset;

 for (; left && (rmsg_head != rs->rmsg_tail); left -= rsize) {
  if (left < rs->rmsg[rmsg_head].data) {
   rsize = left;
  } else {
   rsize = rs->rmsg[rmsg_head].data;
   if (++rmsg_head == rs->rq_size + 1)
    rmsg_head = 0;
  }

  end_size = rs->rbuf_size - rbuf_offset;
  if (rsize > end_size) {
   memcpy(buf, &rs->rbuf[rbuf_offset], end_size);
   rbuf_offset = 0;
   buf += end_size;
   rsize -= end_size;
   left -= end_size;
  }
  memcpy(buf, &rs->rbuf[rbuf_offset], rsize);
  rbuf_offset += rsize;
  buf += rsize;
 }

 return len - left;
}
