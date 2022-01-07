
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_realm {struct tr_realm* realm; struct tr_realm* next; } ;


 int free (struct tr_realm*) ;

__attribute__((used)) static void
free_realms(struct tr_realm *r)
{
    struct tr_realm *p;
    while(r){
 p = r;
 r = r->next;
 free(p->realm);
 free(p);
    }
}
