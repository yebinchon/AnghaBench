
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbufq {struct mbuf* head; struct mbuf* tail; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;



__attribute__((used)) static struct mbuf *
mbufq_dequeue(struct mbufq *q)
{
 struct mbuf *m;

 m = q->head;
 if (m) {
  if (q->tail == m)
   q->tail = ((void*)0);
  q->head = m->m_nextpkt;
  m->m_nextpkt = ((void*)0);
 }
 return (m);
}
