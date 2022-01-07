
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ta_cldata {int taclass; int itemsize; int itemsize6; int size; int count; } ;
typedef int ipfw_xtable_info ;





 int printf (char*,...) ;

__attribute__((used)) static void
table_show_tainfo(ipfw_xtable_info *i, struct ta_cldata *d,
    const char *af, const char *taclass)
{

 switch (d->taclass) {
 case 129:
 case 130:
  printf(" %salgorithm %s info\n", af, taclass);
  if (d->itemsize == d->itemsize6)
   printf("  size: %u items: %u itemsize: %u\n",
       d->size, d->count, d->itemsize);
  else
   printf("  size: %u items: %u "
       "itemsize4: %u itemsize6: %u\n",
       d->size, d->count,
       d->itemsize, d->itemsize6);
  break;
 case 128:
  printf(" %salgorithm %s info\n", af, taclass);
  if (d->itemsize == d->itemsize6)
   printf("  items: %u itemsize: %u\n",
       d->count, d->itemsize);
  else
   printf("  items: %u "
       "itemsize4: %u itemsize6: %u\n",
       d->count, d->itemsize, d->itemsize6);
  break;
 default:
  printf(" algo class: %s\n", taclass);
 }
}
