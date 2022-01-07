
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roffnode {int tok; int line; int col; int rule; struct roffnode* parent; int name; } ;
struct roff {struct roffnode* last; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;


 struct roffnode* mandoc_calloc (int,int) ;
 int mandoc_strdup (char const*) ;

__attribute__((used)) static void
roffnode_push(struct roff *r, enum roff_tok tok, const char *name,
  int line, int col)
{
 struct roffnode *p;

 p = mandoc_calloc(1, sizeof(struct roffnode));
 p->tok = tok;
 if (name)
  p->name = mandoc_strdup(name);
 p->parent = r->last;
 p->line = line;
 p->col = col;
 p->rule = p->parent ? p->parent->rule : 0;

 r->last = p;
}
