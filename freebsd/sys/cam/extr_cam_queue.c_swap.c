
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; } ;
typedef TYPE_1__ cam_pinfo ;



__attribute__((used)) static __inline void
swap(cam_pinfo **queue_array, int i, int j)
{
 cam_pinfo *temp_qentry;

 temp_qentry = queue_array[j];
 queue_array[j] = queue_array[i];
 queue_array[i] = temp_qentry;
 queue_array[j]->index = j;
 queue_array[i]->index = i;
}
