
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_list {struct ip_list* next; } ;


 int free (struct ip_list*) ;

__attribute__((used)) static void
ip_list_free(struct ip_list* p)
{
 struct ip_list* np;
 while(p) {
  np = p->next;
  free(p);
  p = np;
 }
}
