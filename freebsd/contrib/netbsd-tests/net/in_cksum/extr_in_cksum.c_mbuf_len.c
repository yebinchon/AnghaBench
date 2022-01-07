
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; struct mbuf* m_next; } ;



__attribute__((used)) static int
mbuf_len(struct mbuf *m)
{
 return m == ((void*)0) ? 0 : m->m_len + mbuf_len(m->m_next);
}
