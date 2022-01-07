
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_list_t {char* name; } ;


 scalar_t__ test_filter (char const*,char const*) ;

int get_test_set(int *test_set, int limit, const char *test,
 struct test_list_t *tests)
{
 int start, end;
 int idx = 0;

 if (test == ((void*)0)) {

  for (;idx < limit; idx++)
   test_set[idx] = idx;
  return (limit);
 }
 if (*test >= '0' && *test <= '9') {
  const char *vp = test;
  start = 0;
  while (*vp >= '0' && *vp <= '9') {
   start *= 10;
   start += *vp - '0';
   ++vp;
  }
  if (*vp == '\0') {
   end = start;
  } else if (*vp == '-') {
   ++vp;
   if (*vp == '\0') {
    end = limit - 1;
   } else {
    end = 0;
    while (*vp >= '0' && *vp <= '9') {
     end *= 10;
     end += *vp - '0';
     ++vp;
    }
   }
  } else
   return (-1);
  if (start < 0 || end >= limit || start > end)
   return (-1);
  while (start <= end)
   test_set[idx++] = start++;
 } else {
  for (start = 0; start < limit; ++start) {
   const char *name = tests[start].name;
   if (test_filter(test, name))
    test_set[idx++] = start;
  }
 }
 return ((idx == 0)?-1:idx);
}
