
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct camq {size_t entries; size_t array_size; TYPE_1__** queue_array; } ;
struct TYPE_4__ {size_t index; } ;
typedef TYPE_1__ cam_pinfo ;


 int KASSERT (int,char*) ;
 int heap_up (TYPE_1__**,size_t) ;

void
camq_insert(struct camq *queue, cam_pinfo *new_entry)
{

 KASSERT(queue->entries < queue->array_size,
     ("camq_insert: Attempt to insert into a full queue (%d >= %d)",
     queue->entries, queue->array_size));
 queue->entries++;
 queue->queue_array[queue->entries] = new_entry;
 new_entry->index = queue->entries;
 if (queue->entries != 0)
  heap_up(queue->queue_array, queue->entries);
}
