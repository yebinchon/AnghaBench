
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_next; } ;


 scalar_t__ M_TRAILINGSPACE (struct mbuf*) ;
 int m_get (size_t,struct mbuf**) ;

int
m_getm(struct mbuf *top, size_t len, struct mbuf **mpp)
{
 struct mbuf *m, *mp;
 int error;

 for (mp = top; ; mp = mp->m_next) {
  len -= M_TRAILINGSPACE(mp);
  if (mp->m_next == ((void*)0))
   break;

 }
 if (len > 0) {
  if ((error = m_get(len, &m)) != 0)
   return error;
  mp->m_next = m;
 }
 *mpp = top;
 return 0;
}
