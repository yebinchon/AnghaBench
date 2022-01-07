
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {char* string; TYPE_1__* next; struct roff_node* child; } ;
struct roff_meta {int dummy; } ;
struct mpage {int dummy; } ;
struct TYPE_2__ {int string; } ;


 int TYPE_Xr ;
 int free (char*) ;
 int mandoc_asprintf (char**,char*,char*,int ) ;
 int putkey (struct mpage*,char*,int ) ;

__attribute__((used)) static int
parse_mdoc_Xr(struct mpage *mpage, const struct roff_meta *meta,
 const struct roff_node *n)
{
 char *cp;

 if (((void*)0) == (n = n->child))
  return 0;

 if (((void*)0) == n->next) {
  putkey(mpage, n->string, TYPE_Xr);
  return 0;
 }

 mandoc_asprintf(&cp, "%s(%s)", n->string, n->next->string);
 putkey(mpage, cp, TYPE_Xr);
 free(cp);
 return 0;
}
