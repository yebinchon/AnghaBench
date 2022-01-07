
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const* const,char const* const) ;

__attribute__((used)) static int
string_compare(const void *a, const void *b)
{
      return (strcasecmp(*(const char * const *)a, *(const char * const *)b));
}
