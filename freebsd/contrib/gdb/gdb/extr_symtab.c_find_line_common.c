
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linetable_entry {int line; } ;
struct linetable {int nitems; struct linetable_entry* item; } ;



__attribute__((used)) static int
find_line_common (struct linetable *l, int lineno,
    int *exact_match)
{
  int i;
  int len;





  int best_index = -1;
  int best = 0;

  if (lineno <= 0)
    return -1;
  if (l == 0)
    return -1;

  len = l->nitems;
  for (i = 0; i < len; i++)
    {
      struct linetable_entry *item = &(l->item[i]);

      if (item->line == lineno)
 {

   *exact_match = 1;
   return i;
 }

      if (item->line > lineno && (best == 0 || item->line < best))
 {
   best = item->line;
   best_index = i;
 }
    }



  *exact_match = 0;
  return best_index;
}
