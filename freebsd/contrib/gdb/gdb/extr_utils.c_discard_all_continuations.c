
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct continuation {struct continuation* next; } ;


 struct continuation* cmd_continuation ;
 int xfree (struct continuation*) ;

void
discard_all_continuations (void)
{
  struct continuation *continuation_ptr;

  while (cmd_continuation)
    {
      continuation_ptr = cmd_continuation;
      cmd_continuation = continuation_ptr->next;
      xfree (continuation_ptr);
    }
}
