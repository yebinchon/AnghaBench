
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char const*) ;

__attribute__((used)) static int
_fn_qsort_string_compare(const void *i1, const void *i2)
{
 const char *s1 = ((const char * const *)i1)[0];
 const char *s2 = ((const char * const *)i2)[0];

 return strcasecmp(s1, s2);
}
