
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbufq {int * tail; struct mbuf* head; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
mbufq_drain(struct mbufq *q)
{
 struct mbuf *m;

 while ((m = q->head) != ((void*)0)) {
  q->head = m->m_nextpkt;
  m_freem(m);
 }
 q->tail = ((void*)0);
}
