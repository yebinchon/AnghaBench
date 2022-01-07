
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_table {int dummy; } ;
typedef int FILE ;


 int fputs (char*,int *) ;
 int print_mask_int (int *,struct name_table*,int,int*) ;

__attribute__((used)) static bool
print_mask_0(FILE *fp, struct name_table *table, int val, int *rem)
{

 if (val == 0) {
  fputs("0", fp);
  if (rem != ((void*)0))
   *rem = 0;
  return (1);
 }
 return (print_mask_int(fp, table, val, rem));
}
