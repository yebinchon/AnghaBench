
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct name_table {int val; int * str; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*,int *) ;

__attribute__((used)) static void
print_mask_part(FILE *fp, struct name_table *table, uintmax_t *valp,
    bool *printed)
{
 uintmax_t rem;

 rem = *valp;
 for (; table->str != ((void*)0); table++) {
  if ((table->val & rem) == table->val) {




   if (table->val == 0 && *valp != 0)
    continue;
   fprintf(fp, "%s%s", *printed ? "|" : "", table->str);
   *printed = 1;
   rem &= ~table->val;
  }
 }

 *valp = rem;
}
