
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct continuation {struct continuation* next; int arg_list; int (* continuation_hook ) (int ) ;} ;


 struct continuation* intermediate_continuation ;
 int stub1 (int ) ;
 int xfree (struct continuation*) ;

void
do_all_intermediate_continuations (void)
{
  struct continuation *continuation_ptr;
  struct continuation *saved_continuation;





  continuation_ptr = intermediate_continuation;
  intermediate_continuation = ((void*)0);


  while (continuation_ptr)
    {
      (continuation_ptr->continuation_hook) (continuation_ptr->arg_list);
      saved_continuation = continuation_ptr;
      continuation_ptr = continuation_ptr->next;
      xfree (saved_continuation);
    }
}
