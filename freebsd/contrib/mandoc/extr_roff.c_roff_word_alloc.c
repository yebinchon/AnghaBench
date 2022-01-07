
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int flags; int string; } ;
struct roff_man {int next; int roff; } ;


 int NODE_ENDED ;
 int NODE_VALID ;
 int ROFFT_TEXT ;
 int ROFF_NEXT_SIBLING ;
 int TOKEN_NONE ;
 struct roff_node* roff_node_alloc (struct roff_man*,int,int,int ,int ) ;
 int roff_node_append (struct roff_man*,struct roff_node*) ;
 int roff_strdup (int ,char const*) ;

void
roff_word_alloc(struct roff_man *man, int line, int pos, const char *word)
{
 struct roff_node *n;

 n = roff_node_alloc(man, line, pos, ROFFT_TEXT, TOKEN_NONE);
 n->string = roff_strdup(man->roff, word);
 roff_node_append(man, n);
 n->flags |= NODE_VALID | NODE_ENDED;
 man->next = ROFF_NEXT_SIBLING;
}
