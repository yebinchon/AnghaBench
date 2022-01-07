
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dns_query {struct dns_query* next; struct dns_query* name; } ;


 int free (struct dns_query*) ;

__attribute__((used)) static void
free_dns_query(struct dns_query *p)
{
 if (p == ((void*)0))
  return;

 if (p->name)
  free(p->name);
 free_dns_query(p->next);
 free(p);
}
