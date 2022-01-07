
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx_query {struct ctx_query* msg; int res; } ;


 int free (struct ctx_query*) ;
 int ub_resolve_free (int ) ;

void
context_query_delete(struct ctx_query* q)
{
 if(!q) return;
 ub_resolve_free(q->res);
 free(q->msg);
 free(q);
}
