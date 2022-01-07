
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roffnode {scalar_t__ tok; struct roffnode* end; struct roffnode* name; struct roffnode* parent; } ;
struct roff {struct roffnode* last; } ;


 scalar_t__ ROFF_while ;
 int free (struct roffnode*) ;

__attribute__((used)) static int
roffnode_pop(struct roff *r)
{
 struct roffnode *p;
 int inloop;

 p = r->last;
 inloop = p->tok == ROFF_while;
 r->last = p->parent;
 free(p->name);
 free(p->end);
 free(p);
 return inloop;
}
