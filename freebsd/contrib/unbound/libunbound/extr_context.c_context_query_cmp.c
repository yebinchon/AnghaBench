
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int context_query_cmp(const void* a, const void* b)
{
 if( *(int*)a < *(int*)b )
  return -1;
 if( *(int*)a > *(int*)b )
  return 1;
 return 0;
}
