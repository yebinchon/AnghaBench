
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame {scalar_t__ start; struct blame* next; } ;
typedef scalar_t__ apr_off_t ;



__attribute__((used)) static struct blame *
blame_find(struct blame *blame, apr_off_t off)
{
  struct blame *prev = ((void*)0);
  while (blame)
    {
      if (blame->start > off) break;
      prev = blame;
      blame = blame->next;
    }
  return prev;
}
