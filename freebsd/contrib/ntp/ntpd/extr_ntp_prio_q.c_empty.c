
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int front; } ;
typedef TYPE_1__ queue ;



int empty(
 queue *my_queue
 )
{
 return (!my_queue || !my_queue->front);
}
