
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int free (struct mbuf*) ;

__attribute__((used)) static void
m_free(struct mbuf *m)
{
 free(m);
}
