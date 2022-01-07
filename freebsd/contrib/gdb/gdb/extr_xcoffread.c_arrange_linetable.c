
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linetable_entry {int line; int pc; } ;
struct linetable {int nitems; TYPE_1__* item; } ;
struct TYPE_2__ {scalar_t__ line; int pc; } ;


 int NUM_OF_FUNCTIONS ;
 int compare_lte ;
 int qsort (struct linetable_entry*,int,int,int ) ;
 int xfree (struct linetable_entry*) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (struct linetable_entry*,int) ;

__attribute__((used)) static struct linetable *
arrange_linetable (struct linetable *oldLineTb)
{
  int ii, jj, newline,
    function_count;

  struct linetable_entry *fentry;
  int fentry_size;
  struct linetable *newLineTb;



  fentry_size = 20;
  fentry = (struct linetable_entry *)
    xmalloc (fentry_size * sizeof (struct linetable_entry));

  for (function_count = 0, ii = 0; ii < oldLineTb->nitems; ++ii)
    {

      if (oldLineTb->item[ii].line == 0)
 {

   if (function_count >= fentry_size)
     {
       fentry_size *= 2;
       fentry = (struct linetable_entry *)
  xrealloc (fentry, fentry_size * sizeof (struct linetable_entry));
     }
   fentry[function_count].line = ii;
   fentry[function_count].pc = oldLineTb->item[ii].pc;
   ++function_count;
 }
    }

  if (function_count == 0)
    {
      xfree (fentry);
      return oldLineTb;
    }
  else if (function_count > 1)
    qsort (fentry, function_count, sizeof (struct linetable_entry), compare_lte);


  newLineTb = (struct linetable *)
    xmalloc
    (sizeof (struct linetable) +
    (oldLineTb->nitems - function_count) * sizeof (struct linetable_entry));




  newline = 0;
  if (oldLineTb->item[0].line != 0)
    for (newline = 0;
    newline < oldLineTb->nitems && oldLineTb->item[newline].line; ++newline)
      newLineTb->item[newline] = oldLineTb->item[newline];



  for (ii = 0; ii < function_count; ++ii)
    {
      for (jj = fentry[ii].line + 1;
    jj < oldLineTb->nitems && oldLineTb->item[jj].line != 0;
    ++jj, ++newline)
 newLineTb->item[newline] = oldLineTb->item[jj];
    }
  xfree (fentry);
  newLineTb->nitems = oldLineTb->nitems - function_count;
  return newLineTb;
}
