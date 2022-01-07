
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int freq_cmp(const void *a, const void *b)
{
 int _a = *(int *) a;
 int _b = *(int *) b;

 if (_a == 0)
  return 1;
 if (_b == 0)
  return -1;
 return _a - _b;
}
