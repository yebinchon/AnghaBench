
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
asc(const void *a, const void *b)
{
 const int *ia = a, *ib = b;
 return *ib - *ia;
}
