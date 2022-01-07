
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tracepoint {int enabled_p; struct tracepoint* next; int * addr_string; scalar_t__ pass_count; scalar_t__ step_count; int line_number; int input_radix; int language; int section; int * source_file; int address; } ;
struct symtab_and_line {int line; int section; TYPE_1__* symtab; int pc; } ;
struct cleanup {int dummy; } ;
struct TYPE_4__ {int la_language; } ;
struct TYPE_3__ {int filename; } ;


 TYPE_2__* current_language ;
 int discard_cleanups (struct cleanup*) ;
 int input_radix ;
 struct cleanup* make_cleanup (int ,struct tracepoint*) ;
 int memset (struct tracepoint*,int ,int) ;
 int * savestring (int ,int ) ;
 int strlen (int ) ;
 struct tracepoint* tracepoint_chain ;
 int xfree ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct tracepoint *
set_raw_tracepoint (struct symtab_and_line sal)
{
  struct tracepoint *t, *tc;
  struct cleanup *old_chain;

  t = (struct tracepoint *) xmalloc (sizeof (struct tracepoint));
  old_chain = make_cleanup (xfree, t);
  memset (t, 0, sizeof (*t));
  t->address = sal.pc;
  if (sal.symtab == ((void*)0))
    t->source_file = ((void*)0);
  else
    t->source_file = savestring (sal.symtab->filename,
     strlen (sal.symtab->filename));

  t->section = sal.section;
  t->language = current_language->la_language;
  t->input_radix = input_radix;
  t->line_number = sal.line;
  t->enabled_p = 1;
  t->next = 0;
  t->step_count = 0;
  t->pass_count = 0;
  t->addr_string = ((void*)0);





  tc = tracepoint_chain;
  if (tc == 0)
    tracepoint_chain = t;
  else
    {
      while (tc->next)
 tc = tc->next;
      tc->next = t;
    }
  discard_cleanups (old_chain);
  return t;
}
