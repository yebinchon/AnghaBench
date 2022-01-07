
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dns_response {int additional; int authority; int answer; int query; } ;


 int free (struct dns_response*) ;
 int free_dns_query (int ) ;
 int free_dns_rr (int ) ;

__attribute__((used)) static void
free_dns_response(struct dns_response *p)
{
 if (p == ((void*)0))
  return;

 free_dns_query(p->query);
 free_dns_rr(p->answer);
 free_dns_rr(p->authority);
 free_dns_rr(p->additional);
 free(p);
}
