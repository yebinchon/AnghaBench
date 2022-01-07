
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int line; int pos; int tok; int type; int flags; int sec; } ;
struct roff_man {int flags; int lastsec; } ;
typedef enum roff_type { ____Placeholder_roff_type } roff_type ;


 int MDOC_NEWLINE ;
 int MDOC_SYNOPSIS ;
 int NODE_LINE ;
 int NODE_NOFILL ;
 int NODE_SYNPRETTY ;
 int ROFF_NOFILL ;
 int ROFF_NONOFILL ;
 struct roff_node* mandoc_calloc (int,int) ;

struct roff_node *
roff_node_alloc(struct roff_man *man, int line, int pos,
 enum roff_type type, int tok)
{
 struct roff_node *n;

 n = mandoc_calloc(1, sizeof(*n));
 n->line = line;
 n->pos = pos;
 n->tok = tok;
 n->type = type;
 n->sec = man->lastsec;

 if (man->flags & MDOC_SYNOPSIS)
  n->flags |= NODE_SYNPRETTY;
 else
  n->flags &= ~NODE_SYNPRETTY;
 if ((man->flags & (ROFF_NOFILL | ROFF_NONOFILL)) == ROFF_NOFILL)
  n->flags |= NODE_NOFILL;
 else
  n->flags &= ~NODE_NOFILL;
 if (man->flags & MDOC_NEWLINE)
  n->flags |= NODE_LINE;
 man->flags &= ~MDOC_NEWLINE;

 return n;
}
