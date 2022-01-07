
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mbdata {int dummy; } ;


 int m_get (size_t,struct mbuf**) ;
 int mb_initm (struct mbdata*,struct mbuf*) ;

int
mb_init(struct mbdata *mbp, size_t size)
{
 struct mbuf *m;
 int error;

 if ((error = m_get(size, &m)) != 0)
  return error;
 return mb_initm(mbp, m);
}
