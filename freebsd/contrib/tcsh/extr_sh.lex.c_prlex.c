
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {char* word; struct wordent* next; } ;


 int xprintf (char*,char*) ;
 int xputchar (char) ;

void
prlex(struct wordent *sp0)
{
    struct wordent *sp = sp0->next;

    for (;;) {
 xprintf("%S", sp->word);
 sp = sp->next;
 if (sp == sp0)
     break;
 if (sp->word[0] != '\n')
     xputchar(' ');
    }
}
