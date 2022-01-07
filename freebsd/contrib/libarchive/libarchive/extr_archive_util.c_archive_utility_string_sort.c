
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int archive_utility_string_sort_helper (char**,unsigned int) ;

int
archive_utility_string_sort(char **strings)
{
   unsigned int size = 0;
   while (strings[size] != ((void*)0))
  size++;
   return archive_utility_string_sort_helper(strings, size);
}
