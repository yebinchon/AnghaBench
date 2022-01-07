
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {scalar_t__ stacksize; scalar_t__ guardsize; int * stackaddr; } ;
struct pthread_attr {int flags; int stacksize_attr; int guardsize_attr; int * stackaddr_attr; } ;


 int LIST_INSERT_HEAD (int *,struct stack*,int ) ;
 scalar_t__ THR_STACK_DEFAULT ;
 int THR_STACK_USER ;
 scalar_t__ _thr_guard_default ;
 int dstackq ;
 int mstackq ;
 int qe ;
 void* round_up (int) ;

void
_thr_stack_free(struct pthread_attr *attr)
{
 struct stack *spare_stack;

 if ((attr != ((void*)0)) && ((attr->flags & THR_STACK_USER) == 0)
     && (attr->stackaddr_attr != ((void*)0))) {
  spare_stack = (struct stack *)
   ((char *)attr->stackaddr_attr +
   attr->stacksize_attr - sizeof(struct stack));
  spare_stack->stacksize = round_up(attr->stacksize_attr);
  spare_stack->guardsize = round_up(attr->guardsize_attr);
  spare_stack->stackaddr = attr->stackaddr_attr;

  if (spare_stack->stacksize == THR_STACK_DEFAULT &&
      spare_stack->guardsize == _thr_guard_default) {

   LIST_INSERT_HEAD(&dstackq, spare_stack, qe);
  } else {

   LIST_INSERT_HEAD(&mstackq, spare_stack, qe);
  }
  attr->stackaddr_attr = ((void*)0);
 }
}
