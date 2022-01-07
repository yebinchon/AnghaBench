
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const* const,char const* const) ;

__attribute__((used)) static int
qsort_helper(const void *first, const void *second)
{
 const char * const *s1;
 const char * const *s2;

 s1 = first;
 s2 = second;
 return (strcmp(*s1, *s2));
}
