
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_next; scalar_t__ m_len; } ;



__attribute__((used)) static size_t
m_totlen(struct mbuf *m0)
{
 struct mbuf *m = m0;
 int len = 0;

 while (m) {
  len += m->m_len;
  m = m->m_next;
 }
 return len;
}
