
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint {struct action_line* actions; } ;
struct action_line {struct action_line* action; struct action_line* next; } ;


 int xfree (struct action_line*) ;

void
free_actions (struct tracepoint *t)
{
  struct action_line *line, *next;

  for (line = t->actions; line; line = next)
    {
      next = line->next;
      if (line->action)
 xfree (line->action);
      xfree (line);
    }
  t->actions = ((void*)0);
}
