
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct camq {int entries; int array_size; int ** queue_array; } ;
typedef int cam_pinfo ;


 int CAM_REQ_CMP ;
 int CAM_RESRC_UNAVAIL ;
 int KASSERT (int,char*) ;
 int M_CAMQ ;
 int M_NOWAIT ;
 int bcopy (int **,int **,int) ;
 int free (int **,int ) ;
 scalar_t__ malloc (int,int ,int ) ;

u_int32_t
camq_resize(struct camq *queue, int new_size)
{
 cam_pinfo **new_array;

 KASSERT(new_size >= queue->entries, ("camq_resize: "
     "New queue size can't accommodate queued entries (%d < %d).",
     new_size, queue->entries));
 new_array = (cam_pinfo **)malloc(new_size * sizeof(cam_pinfo *),
      M_CAMQ, M_NOWAIT);
 if (new_array == ((void*)0)) {

  return (CAM_RESRC_UNAVAIL);
 }





 if (queue->queue_array != ((void*)0)) {
  queue->queue_array++;
  bcopy(queue->queue_array, new_array,
        queue->entries * sizeof(cam_pinfo *));
  free(queue->queue_array, M_CAMQ);
 }
 queue->queue_array = new_array-1;
 queue->array_size = new_size;
 return (CAM_REQ_CMP);
}
