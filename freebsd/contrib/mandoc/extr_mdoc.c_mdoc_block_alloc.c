
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mdoc_data {int dummy; } mdoc_data ;
struct roff_node {int norm; struct mdoc_arg* args; } ;
struct roff_man {int next; } ;
struct mdoc_arg {int refcnt; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;







 int ROFFT_BLOCK ;
 int ROFF_NEXT_CHILD ;
 int mandoc_calloc (int,int) ;
 struct roff_node* roff_node_alloc (struct roff_man*,int,int,int ,int) ;
 int roff_node_append (struct roff_man*,struct roff_node*) ;

struct roff_node *
mdoc_block_alloc(struct roff_man *mdoc, int line, int pos,
    enum roff_tok tok, struct mdoc_arg *args)
{
 struct roff_node *p;

 p = roff_node_alloc(mdoc, line, pos, ROFFT_BLOCK, tok);
 p->args = args;
 if (p->args)
  (args->refcnt)++;

 switch (tok) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  p->norm = mandoc_calloc(1, sizeof(union mdoc_data));
  break;
 default:
  break;
 }
 roff_node_append(mdoc, p);
 mdoc->next = ROFF_NEXT_CHILD;
 return p;
}
