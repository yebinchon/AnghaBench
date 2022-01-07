
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
cmp_unsigned (void *a, void *b)
{
    return *(unsigned int*)b - *(unsigned int*)a;
}
