
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {struct wordent* next; struct wordent* prev; int word; } ;


 int STRNULL ;

void
initlex(struct wordent *vp)
{
 vp->word = STRNULL;
 vp->prev = vp;
 vp->next = vp;
}
