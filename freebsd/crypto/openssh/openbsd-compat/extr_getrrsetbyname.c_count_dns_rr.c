
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct dns_rr {scalar_t__ class; scalar_t__ type; struct dns_rr* next; } ;



__attribute__((used)) static int
count_dns_rr(struct dns_rr *p, u_int16_t class, u_int16_t type)
{
 int n = 0;

 while(p) {
  if (p->class == class && p->type == type)
   n++;
  p = p->next;
 }

 return (n);
}
