
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {size_t m_maxlen; int m_data; } ;


 int ENOMEM ;
 size_t M_ALIGN (size_t) ;
 scalar_t__ M_BASESIZE ;
 size_t M_MINSIZE ;
 int M_TOP (struct mbuf*) ;
 int bzero (struct mbuf*,scalar_t__) ;
 struct mbuf* malloc (scalar_t__) ;

__attribute__((used)) static int
m_get(size_t len, struct mbuf **mpp)
{
 struct mbuf *m;

 len = M_ALIGN(len);
 if (len < M_MINSIZE)
  len = M_MINSIZE;
 m = malloc(M_BASESIZE + len);
 if (m == ((void*)0))
  return ENOMEM;
 bzero(m, M_BASESIZE + len);
 m->m_maxlen = len;
 m->m_data = M_TOP(m);
 *mpp = m;
 return 0;
}
