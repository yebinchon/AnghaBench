
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {scalar_t__ st_value; } ;
typedef scalar_t__ intmax_t ;



__attribute__((used)) static int
address_compare(const void *a, const void *b)
{
 const struct symbol *sa = a;
 const struct symbol *sb = b;
 return (int)(intmax_t)(sa->st_value - sb->st_value);
}
