
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame {struct blame* next; int start; } ;
typedef scalar_t__ apr_off_t ;



__attribute__((used)) static void
blame_adjust(struct blame *blame, apr_off_t adjust)
{
  while (blame)
    {
      blame->start += adjust;
      blame = blame->next;
    }
}
