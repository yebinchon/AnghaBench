
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_chain {struct blame* avail; } ;
struct blame {struct blame* next; } ;



__attribute__((used)) static void
blame_destroy(struct blame_chain *chain,
              struct blame *blame)
{
  blame->next = chain->avail;
  chain->avail = blame;
}
