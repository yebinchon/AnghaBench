
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev {int dummy; } ;
struct blame_chain {int pool; struct blame* avail; } ;
struct blame {struct blame* next; int start; struct rev const* rev; } ;
typedef int apr_off_t ;


 struct blame* apr_palloc (int ,int) ;

__attribute__((used)) static struct blame *
blame_create(struct blame_chain *chain,
             const struct rev *rev,
             apr_off_t start)
{
  struct blame *blame;
  if (chain->avail)
    {
      blame = chain->avail;
      chain->avail = blame->next;
    }
  else
    blame = apr_palloc(chain->pool, sizeof(*blame));
  blame->rev = rev;
  blame->start = start;
  blame->next = ((void*)0);
  return blame;
}
