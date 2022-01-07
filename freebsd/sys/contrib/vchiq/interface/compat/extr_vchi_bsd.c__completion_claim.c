
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int done; int lock; } ;


 int KASSERT (int,char*) ;
 int mtx_owned (int *) ;

__attribute__((used)) static void
_completion_claim(struct completion *c)
{

 KASSERT(mtx_owned(&c->lock),
     ("_completion_claim should be called with acquired lock"));
 KASSERT(c->done != 0, ("_completion_claim on non-waited completion"));
 if (c->done > 0)
  c->done--;
 else
  KASSERT(c->done == -1, ("Invalid value of c->done: %d", c->done));
}
