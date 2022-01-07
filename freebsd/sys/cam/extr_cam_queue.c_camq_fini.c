
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camq {int * queue_array; } ;


 int M_CAMQ ;
 int free (int *,int ) ;

void
camq_fini(struct camq *queue)
{
 if (queue->queue_array != ((void*)0)) {




  queue->queue_array++;
  free(queue->queue_array, M_CAMQ);
 }
}
