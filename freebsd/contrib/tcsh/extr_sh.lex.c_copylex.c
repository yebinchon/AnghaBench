
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {char* word; struct wordent* next; struct wordent* prev; } ;


 char* Strsave (char*) ;
 struct wordent* xmalloc (int) ;

void
copylex(struct wordent *hp, struct wordent *fp)
{
    struct wordent *wdp;

    wdp = hp;
    fp = fp->next;
    do {
 struct wordent *new;

 new = xmalloc(sizeof(*new));
 new->word = ((void*)0);
 new->prev = wdp;
 new->next = hp;
 wdp->next = new;
 hp->prev = new;
 wdp = new;
 wdp->word = Strsave(fp->word);
 fp = fp->next;
    } while (wdp->word[0] != '\n');
}
