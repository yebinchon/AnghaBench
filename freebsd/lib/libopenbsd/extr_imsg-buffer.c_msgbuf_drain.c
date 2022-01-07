
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {int bufs; } ;
struct ibuf {scalar_t__ rpos; scalar_t__ wpos; } ;


 struct ibuf* TAILQ_FIRST (int *) ;
 struct ibuf* TAILQ_NEXT (struct ibuf*,int ) ;
 int entry ;
 int ibuf_dequeue (struct msgbuf*,struct ibuf*) ;

void
msgbuf_drain(struct msgbuf *msgbuf, size_t n)
{
 struct ibuf *buf, *next;

 for (buf = TAILQ_FIRST(&msgbuf->bufs); buf != ((void*)0) && n > 0;
     buf = next) {
  next = TAILQ_NEXT(buf, entry);
  if (buf->rpos + n >= buf->wpos) {
   n -= buf->wpos - buf->rpos;
   ibuf_dequeue(msgbuf, buf);
  } else {
   buf->rpos += n;
   n = 0;
  }
 }
}
