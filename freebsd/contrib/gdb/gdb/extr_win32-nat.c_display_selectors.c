
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SegCs; int SegDs; int SegEs; int SegSs; int SegFs; int SegGs; } ;
struct TYPE_4__ {int h; TYPE_1__ context; } ;


 TYPE_2__* current_thread ;
 int display_selector (int ,int) ;
 int parse_and_eval_long (char*) ;
 int printf_filtered (char*,char*) ;
 int puts_filtered (char*) ;

__attribute__((used)) static void
display_selectors (char * args, int from_tty)
{
  if (!current_thread)
    {
      puts_filtered ("Impossible to display selectors now.\n");
      return;
    }
  if (!args)
    {

      puts_filtered ("Selector $cs\n");
      display_selector (current_thread->h,
 current_thread->context.SegCs);
      puts_filtered ("Selector $ds\n");
      display_selector (current_thread->h,
 current_thread->context.SegDs);
      puts_filtered ("Selector $es\n");
      display_selector (current_thread->h,
 current_thread->context.SegEs);
      puts_filtered ("Selector $ss\n");
      display_selector (current_thread->h,
 current_thread->context.SegSs);
      puts_filtered ("Selector $fs\n");
      display_selector (current_thread->h,
 current_thread->context.SegFs);
      puts_filtered ("Selector $gs\n");
      display_selector (current_thread->h,
 current_thread->context.SegGs);
    }
  else
    {
      int sel;
      sel = parse_and_eval_long (args);
      printf_filtered ("Selector \"%s\"\n",args);
      display_selector (current_thread->h, sel);
    }
}
