
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct name_table {int dummy; } ;
typedef int FILE ;


 int fputs (char const*,int *) ;
 char* lookup_value (struct name_table*,int ) ;

__attribute__((used)) static bool
print_value(FILE *fp, struct name_table *table, uintmax_t val)
{
 const char *str;

 str = lookup_value(table, val);
 if (str != ((void*)0)) {
  fputs(str, fp);
  return (1);
 }
 return (0);
}
