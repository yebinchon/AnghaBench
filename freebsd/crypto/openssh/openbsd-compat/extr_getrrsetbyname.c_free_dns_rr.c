
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dns_rr {struct dns_rr* next; struct dns_rr* rdata; struct dns_rr* name; } ;


 int free (struct dns_rr*) ;

__attribute__((used)) static void
free_dns_rr(struct dns_rr *p)
{
 if (p == ((void*)0))
  return;

 if (p->name)
  free(p->name);
 if (p->rdata)
  free(p->rdata);
 free_dns_rr(p->next);
 free(p);
}
