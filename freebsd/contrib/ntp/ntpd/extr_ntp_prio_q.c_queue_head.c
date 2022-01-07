
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* front; } ;
typedef TYPE_1__ queue ;



void *
queue_head(
 queue *q
 )
{
 if (((void*)0) == q || ((void*)0) == q->front)
  return ((void*)0);

 return q->front + 1;
}
