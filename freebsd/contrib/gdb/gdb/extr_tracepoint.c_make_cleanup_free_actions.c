
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_free_actions_cleanup ;
 struct cleanup* make_cleanup (int ,struct tracepoint*) ;

__attribute__((used)) static struct cleanup *
make_cleanup_free_actions (struct tracepoint *t)
{
  return make_cleanup (do_free_actions_cleanup, t);
}
