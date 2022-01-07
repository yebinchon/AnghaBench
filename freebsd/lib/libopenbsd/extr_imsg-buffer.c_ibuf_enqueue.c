
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {int queued; int bufs; } ;
struct ibuf {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct ibuf*,int ) ;
 int entry ;

void
ibuf_enqueue(struct msgbuf *msgbuf, struct ibuf *buf)
{
 TAILQ_INSERT_TAIL(&msgbuf->bufs, buf, entry);
 msgbuf->queued++;
}
