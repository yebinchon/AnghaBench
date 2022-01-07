
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef scalar_t__ u_long ;
struct name_table {int dummy; } ;
typedef int FILE ;


 int fputs (char*,int *) ;
 int print_mask_part (int *,struct name_table*,scalar_t__*,int*) ;

__attribute__((used)) static bool
print_mask_0ul(FILE *fp, struct name_table *table, u_long lval, u_long *rem)
{
 uintmax_t val;
 bool printed;

 if (lval == 0) {
  fputs("0", fp);
  if (rem != ((void*)0))
   *rem = 0;
  return (1);
 }

 printed = 0;
 val = lval;
 print_mask_part(fp, table, &val, &printed);
 if (rem != ((void*)0))
  *rem = val;
 return (printed);
}
