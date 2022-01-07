
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tbl_span {int dummy; } ;
struct tbl_node {int dummy; } ;
struct roff_node {int flags; struct tbl_span* span; } ;
struct TYPE_2__ {scalar_t__ macroset; } ;
struct roff_man {int next; TYPE_1__ meta; } ;


 scalar_t__ MACROSET_MAN ;
 int NODE_ENDED ;
 int NODE_VALID ;
 int ROFFT_TBL ;
 int ROFF_NEXT_SIBLING ;
 int ROFF_TS ;
 int TOKEN_NONE ;
 int man_breakscope (struct roff_man*,int ) ;
 struct roff_node* roff_node_alloc (struct roff_man*,int,int ,int ,int ) ;
 int roff_node_append (struct roff_man*,struct roff_node*) ;
 struct tbl_span* tbl_span (struct tbl_node*) ;

__attribute__((used)) static void
roff_addtbl(struct roff_man *man, int line, struct tbl_node *tbl)
{
 struct roff_node *n;
 struct tbl_span *span;

 if (man->meta.macroset == MACROSET_MAN)
  man_breakscope(man, ROFF_TS);
 while ((span = tbl_span(tbl)) != ((void*)0)) {
  n = roff_node_alloc(man, line, 0, ROFFT_TBL, TOKEN_NONE);
  n->span = span;
  roff_node_append(man, n);
  n->flags |= NODE_VALID | NODE_ENDED;
  man->next = ROFF_NEXT_SIBLING;
 }
}
