
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int node; int domain; struct entry* next; } ;


 struct entry* firstentry ;
 char* lookup (int ) ;
 int remember (int ,char*) ;
 int strchr (int ,char) ;

finish()
{
    struct entry *p;
    char *domain;

    for (p = firstentry; p; p = p->next) {
 if (!strchr(p->domain, '.') && (domain = lookup(p->domain))) {
     remember(p->node, domain);
 }
    }
}
