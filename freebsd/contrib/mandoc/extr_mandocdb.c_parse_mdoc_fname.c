
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ type; char* string; scalar_t__ sec; } ;
struct mpage {int dummy; } ;


 int NAME_SYN ;
 scalar_t__ ROFFT_TEXT ;
 scalar_t__ SEC_SYNOPSIS ;
 int TYPE_Fn ;
 int putkeys (struct mpage*,char*,size_t,int ) ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static void
parse_mdoc_fname(struct mpage *mpage, const struct roff_node *n)
{
 char *cp;
 size_t sz;

 if (n->type != ROFFT_TEXT)
  return;



 cp = n->string;
 while (*cp == '(' || *cp == '*')
  cp++;
 sz = strcspn(cp, "()");

 putkeys(mpage, cp, sz, TYPE_Fn);
 if (n->sec == SEC_SYNOPSIS)
  putkeys(mpage, cp, sz, NAME_SYN);
}
