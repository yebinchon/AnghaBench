
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct name_table {int dummy; } ;
typedef int FILE ;


 int print_mask_part (int *,struct name_table*,int*,int*) ;

__attribute__((used)) static bool
print_mask_int(FILE *fp, struct name_table *table, int ival, int *rem)
{
 uintmax_t val;
 bool printed;

 printed = 0;
 val = (unsigned)ival;
 print_mask_part(fp, table, &val, &printed);
 if (rem != ((void*)0))
  *rem = val;
 return (printed);
}
