
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct collection_list {int* regs_mask; } ;


 int error (char*,unsigned int) ;
 scalar_t__ info_verbose ;
 int printf_filtered (char*,unsigned int) ;

__attribute__((used)) static void
add_register (struct collection_list *collection, unsigned int regno)
{
  if (info_verbose)
    printf_filtered ("collect register %d\n", regno);
  if (regno > (8 * sizeof (collection->regs_mask)))
    error ("Internal: register number %d too large for tracepoint",
    regno);
  collection->regs_mask[regno / 8] |= 1 << (regno % 8);
}
