
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camq {int dummy; } ;


 int M_CAMQ ;
 int camq_fini (struct camq*) ;
 int free (struct camq*,int ) ;

void
camq_free(struct camq *queue)
{
 if (queue != ((void*)0)) {
  camq_fini(queue);
  free(queue, M_CAMQ);
 }
}
