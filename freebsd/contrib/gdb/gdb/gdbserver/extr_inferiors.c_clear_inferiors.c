
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tail; int head; } ;


 TYPE_1__ all_threads ;
 int for_each_inferior (TYPE_1__*,int ) ;
 int free_one_thread ;

void
clear_inferiors (void)
{
  for_each_inferior (&all_threads, free_one_thread);

  all_threads.head = all_threads.tail = ((void*)0);
}
