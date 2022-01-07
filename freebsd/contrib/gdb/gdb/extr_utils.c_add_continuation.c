
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct continuation_arg {int dummy; } ;
struct continuation {void (* continuation_hook ) (struct continuation_arg*) ;struct continuation* next; struct continuation_arg* arg_list; } ;


 struct continuation* cmd_continuation ;
 scalar_t__ xmalloc (int) ;

void
add_continuation (void (*continuation_hook) (struct continuation_arg *),
    struct continuation_arg *arg_list)
{
  struct continuation *continuation_ptr;

  continuation_ptr =
    (struct continuation *) xmalloc (sizeof (struct continuation));
  continuation_ptr->continuation_hook = continuation_hook;
  continuation_ptr->arg_list = arg_list;
  continuation_ptr->next = cmd_continuation;
  cmd_continuation = continuation_ptr;
}
