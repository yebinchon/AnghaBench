
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_next; } ;


 int m_free (struct mbuf*) ;

__attribute__((used)) static void
m_freem(struct mbuf *m0)
{
 struct mbuf *m;

 while (m0) {
  m = m0->m_next;
  m_free(m0);
  m0 = m;
 }
}
