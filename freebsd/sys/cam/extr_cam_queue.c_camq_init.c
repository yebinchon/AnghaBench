
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camq {int array_size; int ** queue_array; } ;
typedef int cam_pinfo ;


 int M_CAMQ ;
 int M_NOWAIT ;
 int bzero (struct camq*,int) ;
 scalar_t__ malloc (int,int ,int ) ;
 int printf (char*) ;

int
camq_init(struct camq *camq, int size)
{
 bzero(camq, sizeof(*camq));
 camq->array_size = size;
 if (camq->array_size != 0) {
  camq->queue_array = (cam_pinfo**)malloc(size*sizeof(cam_pinfo*),
       M_CAMQ, M_NOWAIT);
  if (camq->queue_array == ((void*)0)) {
   printf("camq_init: - cannot malloc array!\n");
   return (1);
  }




  camq->queue_array--;
 }
 return (0);
}
