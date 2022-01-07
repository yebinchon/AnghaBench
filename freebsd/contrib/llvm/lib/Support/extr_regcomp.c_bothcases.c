
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uch ;
struct parse {char* next; char* end; } ;


 int assert (int) ;
 int othercase (int) ;
 int p_bracket (struct parse*) ;

__attribute__((used)) static void
bothcases(struct parse *p, int ch)
{
 char *oldnext = p->next;
 char *oldend = p->end;
 char bracket[3];

 ch = (uch)ch;
 assert(othercase(ch) != ch);
 p->next = bracket;
 p->end = bracket+2;
 bracket[0] = ch;
 bracket[1] = ']';
 bracket[2] = '\0';
 p_bracket(p);
 assert(p->next == bracket+2);
 p->next = oldnext;
 p->end = oldend;
}
