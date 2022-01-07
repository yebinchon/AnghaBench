
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ sec; scalar_t__ type; char* string; struct roff_node* next; struct roff_node* child; } ;
struct roff_meta {int dummy; } ;
struct mpage {int dummy; } ;


 scalar_t__ ROFFT_TEXT ;
 scalar_t__ SEC_SYNOPSIS ;
 int TYPE_In ;
 int putkeys (struct mpage*,char*,int,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
parse_mdoc_Fd(struct mpage *mpage, const struct roff_meta *meta,
 const struct roff_node *n)
{
 char *start, *end;
 size_t sz;

 if (SEC_SYNOPSIS != n->sec ||
     ((void*)0) == (n = n->child) ||
     n->type != ROFFT_TEXT)
  return 0;






 if (strcmp("#include", n->string))
  return 0;

 if ((n = n->next) == ((void*)0) || n->type != ROFFT_TEXT)
  return 0;






 start = n->string;
 if ('<' == *start || '"' == *start)
  start++;

 if (0 == (sz = strlen(start)))
  return 0;

 end = &start[(int)sz - 1];
 if ('>' == *end || '"' == *end)
  end--;

 if (end > start)
  putkeys(mpage, start, end - start + 1, TYPE_In);
 return 0;
}
