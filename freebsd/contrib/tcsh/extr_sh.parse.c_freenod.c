
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {struct wordent* prev; struct wordent* next; struct wordent* word; } ;


 int xfree (struct wordent*) ;

__attribute__((used)) static struct wordent *
freenod(struct wordent *p1, struct wordent *p2)
{
    struct wordent *retp = p1->prev;

    while (p1 != p2) {
 xfree(p1->word);
 p1 = p1->next;
 xfree(p1->prev);
    }
    retp->next = p2;
    p2->prev = retp;
    return (retp);
}
