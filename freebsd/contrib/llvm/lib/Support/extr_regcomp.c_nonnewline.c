
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {char* next; char* end; } ;


 int assert (int) ;
 int p_bracket (struct parse*) ;

__attribute__((used)) static void
nonnewline(struct parse *p)
{
 char *oldnext = p->next;
 char *oldend = p->end;
 char bracket[4];

 p->next = bracket;
 p->end = bracket+3;
 bracket[0] = '^';
 bracket[1] = '\n';
 bracket[2] = ']';
 bracket[3] = '\0';
 p_bracket(p);
 assert(p->next == bracket+3);
 p->next = oldnext;
 p->end = oldend;
}
