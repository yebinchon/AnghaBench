
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {int end; int norm; struct roff_node* body; TYPE_1__* parent; int flags; } ;
struct roff_man {int next; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
struct TYPE_2__ {int flags; } ;


 int ENDBODY_SPACE ;
 int NODE_ENDED ;
 int ROFFT_BODY ;
 int ROFF_NEXT_SIBLING ;
 struct roff_node* roff_node_alloc (struct roff_man*,int,int,int ,int) ;
 int roff_node_append (struct roff_man*,struct roff_node*) ;

struct roff_node *
mdoc_endbody_alloc(struct roff_man *mdoc, int line, int pos,
    enum roff_tok tok, struct roff_node *body)
{
 struct roff_node *p;

 body->flags |= NODE_ENDED;
 body->parent->flags |= NODE_ENDED;
 p = roff_node_alloc(mdoc, line, pos, ROFFT_BODY, tok);
 p->body = body;
 p->norm = body->norm;
 p->end = ENDBODY_SPACE;
 roff_node_append(mdoc, p);
 mdoc->next = ROFF_NEXT_SIBLING;
 return p;
}
