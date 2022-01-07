
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct collection_list {size_t next_memrange; int listsize; TYPE_1__* list; } ;
typedef void* bfd_signed_vma ;
struct TYPE_3__ {int type; void* end; void* start; } ;


 int add_register (struct collection_list*,int) ;
 scalar_t__ info_verbose ;
 int printf_filtered (char*,unsigned long) ;
 int printf_vma (void*) ;
 TYPE_1__* xrealloc (TYPE_1__*,int) ;

__attribute__((used)) static void
add_memrange (struct collection_list *memranges, int type, bfd_signed_vma base,
       unsigned long len)
{
  if (info_verbose)
    {
      printf_filtered ("(%d,", type);
      printf_vma (base);
      printf_filtered (",%ld)\n", len);
    }


  memranges->list[memranges->next_memrange].type = type;

  memranges->list[memranges->next_memrange].start = base;

  memranges->list[memranges->next_memrange].end = base + len;
  memranges->next_memrange++;
  if (memranges->next_memrange >= memranges->listsize)
    {
      memranges->listsize *= 2;
      memranges->list = xrealloc (memranges->list,
      memranges->listsize);
    }

  if (type != -1)
    add_register (memranges, type);
}
