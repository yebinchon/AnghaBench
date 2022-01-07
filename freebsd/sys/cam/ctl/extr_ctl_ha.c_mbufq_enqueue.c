
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbufq {struct mbuf* tail; struct mbuf* head; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;



__attribute__((used)) static void
mbufq_enqueue(struct mbufq *q, struct mbuf *m)
{

 m->m_nextpkt = ((void*)0);
 if (q->tail)
  q->tail->m_nextpkt = m;
 else
  q->head = m;
 q->tail = m;
}
