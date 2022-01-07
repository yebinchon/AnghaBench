
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_realm {struct tr_realm* next; } ;



__attribute__((used)) static struct tr_realm*
append_realm(struct tr_realm *head, struct tr_realm *r)
{
    struct tr_realm *p;
    if(head == ((void*)0)){
 r->next = ((void*)0);
 return r;
    }
    p = head;
    while(p->next) p = p->next;
    p->next = r;
    return head;
}
