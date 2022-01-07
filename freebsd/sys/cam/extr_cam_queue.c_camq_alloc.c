
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camq {int dummy; } ;


 int M_CAMQ ;
 int M_NOWAIT ;
 scalar_t__ camq_init (struct camq*,int) ;
 int free (struct camq*,int ) ;
 scalar_t__ malloc (int,int ,int ) ;

struct camq *
camq_alloc(int size)
{
 struct camq *camq;

 camq = (struct camq *)malloc(sizeof(*camq), M_CAMQ, M_NOWAIT);
 if (camq != ((void*)0)) {
  if (camq_init(camq, size) != 0) {
   free(camq, M_CAMQ);
   camq = ((void*)0);
  }
 }
 return (camq);
}
