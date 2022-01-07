
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static int
sorthelp(const void *a, const void *b)
{
 const uint64_t *oa, *ob;

 oa = a;
 ob = b;
 if (*oa > *ob)
  return 1;
 if (*oa < *ob)
  return -1;
 return 0;
}
