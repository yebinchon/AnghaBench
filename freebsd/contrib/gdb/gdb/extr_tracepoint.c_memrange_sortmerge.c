
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct memrange {int dummy; } ;
struct collection_list {int next_memrange; TYPE_1__* list; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ start; scalar_t__ end; } ;


 scalar_t__ MAX_REGISTER_SIZE ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memrange_cmp ;
 int qsort (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static void
memrange_sortmerge (struct collection_list *memranges)
{
  int a, b;

  qsort (memranges->list, memranges->next_memrange,
  sizeof (struct memrange), memrange_cmp);
  if (memranges->next_memrange > 0)
    {
      for (a = 0, b = 1; b < memranges->next_memrange; b++)
 {
   if (memranges->list[a].type == memranges->list[b].type &&
       memranges->list[b].start - memranges->list[a].end <=
       MAX_REGISTER_SIZE)
     {

       if (memranges->list[b].end > memranges->list[a].end)
  memranges->list[a].end = memranges->list[b].end;
       continue;
     }
   a++;
   if (a != b)
     memcpy (&memranges->list[a], &memranges->list[b],
      sizeof (struct memrange));
 }
      memranges->next_memrange = a + 1;
    }
}
