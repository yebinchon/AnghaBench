
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {struct wordent* prev; struct wordent* word; struct wordent* next; } ;


 int xfree (struct wordent*) ;

void
freelex(struct wordent *vp)
{
    struct wordent *fp;

    while (vp->next != vp) {
 fp = vp->next;
 vp->next = fp->next;
 xfree(fp->word);
 xfree(fp);
    }
    vp->prev = vp;
}
