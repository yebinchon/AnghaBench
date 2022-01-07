
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {int data; int (* threadfn ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void
kthread_wrapper(void *data)
{
 struct thread_data *slot;

 slot = data;
 slot->threadfn(slot->data);
}
