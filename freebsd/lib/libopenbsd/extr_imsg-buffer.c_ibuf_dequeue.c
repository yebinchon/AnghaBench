
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {int queued; int bufs; } ;
struct ibuf {int fd; } ;


 int TAILQ_REMOVE (int *,struct ibuf*,int ) ;
 int close (int) ;
 int entry ;
 int ibuf_free (struct ibuf*) ;

void
ibuf_dequeue(struct msgbuf *msgbuf, struct ibuf *buf)
{
 TAILQ_REMOVE(&msgbuf->bufs, buf, entry);

 if (buf->fd != -1)
  close(buf->fd);

 msgbuf->queued--;
 ibuf_free(buf);
}
