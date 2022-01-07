
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range_entry {scalar_t__ start; scalar_t__ len; } ;



__attribute__((used)) static int
range_entry_cmp(const void *a, const void *b)
{
    const struct range_entry *ea = (const struct range_entry*)a;
    const struct range_entry *eb = (const struct range_entry*)b;

    if (ea->start >= eb->start && ea->start < eb->start + eb->len)
 return 0;
    return ea->start - eb->start;
}
