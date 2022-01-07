
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {int mstacksz; int reqtab; struct roff* mstack; struct roff* argv; } ;


 int free (struct roff*) ;
 int roff_free1 (struct roff*) ;
 int roffhash_free (int ) ;

void
roff_free(struct roff *r)
{
 int i;

 roff_free1(r);
 for (i = 0; i < r->mstacksz; i++)
  free(r->mstack[i].argv);
 free(r->mstack);
 roffhash_free(r->reqtab);
 free(r);
}
