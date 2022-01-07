
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
struct name_table {char const* str; scalar_t__ val; } ;



__attribute__((used)) static const char *
lookup_value(struct name_table *table, uintmax_t val)
{

 for (; table->str != ((void*)0); table++)
  if (table->val == val)
   return (table->str);
 return (((void*)0));
}
