
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {scalar_t__ type; scalar_t__ tok; TYPE_1__* child; } ;
struct roff_meta {int dummy; } ;
struct mpage {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int * next; } ;


 scalar_t__ MDOC_Va ;
 scalar_t__ ROFFT_BODY ;
 scalar_t__ ROFFT_ELEM ;
 scalar_t__ ROFFT_TEXT ;
 int TYPE_Va ;
 int TYPE_Vt ;
 int deroff (char**,struct roff_node const*) ;
 int free (char*) ;
 int putkey (struct mpage*,char*,int) ;

__attribute__((used)) static int
parse_mdoc_Va(struct mpage *mpage, const struct roff_meta *meta,
 const struct roff_node *n)
{
 char *cp;

 if (n->type != ROFFT_ELEM && n->type != ROFFT_BODY)
  return 0;

 if (n->child != ((void*)0) &&
     n->child->next == ((void*)0) &&
     n->child->type == ROFFT_TEXT)
  return 1;

 cp = ((void*)0);
 deroff(&cp, n);
 if (cp != ((void*)0)) {
  putkey(mpage, cp, TYPE_Vt | (n->tok == MDOC_Va ||
      n->type == ROFFT_BODY ? TYPE_Va : 0));
  free(cp);
 }

 return 0;
}
