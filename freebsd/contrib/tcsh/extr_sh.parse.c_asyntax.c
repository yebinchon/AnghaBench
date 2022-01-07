
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {struct wordent* next; int * word; } ;


 int any (char*,int ) ;
 int asyn0 (struct wordent*,struct wordent*) ;

__attribute__((used)) static int
asyntax(struct wordent *p1, struct wordent *p2)
{
    while (p1 != p2) {
 if (!any(";&\n", p1->word[0]))
     return asyn0(p1, p2);
 p1 = p1->next;
    }
    return 0;
}
