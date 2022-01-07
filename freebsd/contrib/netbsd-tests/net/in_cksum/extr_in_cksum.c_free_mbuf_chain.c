
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_next; } ;


 int free (struct mbuf*) ;

__attribute__((used)) static void
free_mbuf_chain(struct mbuf *m)
{
 struct mbuf *next;

 if (m == ((void*)0))
  return;

 next = m->m_next;
 free(m);
 free_mbuf_chain(next);
}
