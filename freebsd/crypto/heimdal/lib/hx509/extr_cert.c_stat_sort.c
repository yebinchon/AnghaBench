
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_el {int stats; } ;



__attribute__((used)) static int
stat_sort(const void *a, const void *b)
{
    const struct stat_el *ae = a;
    const struct stat_el *be = b;
    return be->stats - ae->stats;
}
