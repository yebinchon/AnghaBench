
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {char* next; char* end; } ;
typedef char RCHAR_T ;


 int assert (int) ;
 int othercase (int) ;
 int p_bracket (struct parse*) ;

__attribute__((used)) static void
bothcases(struct parse *p, int ch)
{
 RCHAR_T *oldnext = p->next;
 RCHAR_T *oldend = p->end;
 RCHAR_T bracket[3];

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
