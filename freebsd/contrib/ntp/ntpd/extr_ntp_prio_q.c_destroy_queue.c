
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* node_next; struct TYPE_5__* front; } ;
typedef TYPE_1__ queue ;
typedef TYPE_1__ node ;


 int free (TYPE_1__*) ;

void destroy_queue(
 queue *my_queue
 )
{
    node *temp = ((void*)0);


    while (my_queue->front != ((void*)0)) {
        temp = my_queue->front;
        my_queue->front = my_queue->front->node_next;
        free(temp);
    }


    free(my_queue);
}
