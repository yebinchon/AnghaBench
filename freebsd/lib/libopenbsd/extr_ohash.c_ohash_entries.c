
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohash {unsigned int total; unsigned int deleted; } ;



unsigned int
ohash_entries(struct ohash *h)
{
 return h->total - h->deleted;
}
