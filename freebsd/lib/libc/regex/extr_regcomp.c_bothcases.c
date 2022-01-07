
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
struct parse {char* next; char* end; } ;
typedef int mbstate_t ;
typedef int mbs ;


 int MB_LEN_MAX ;
 int assert (int) ;
 int memset (int *,int ,int) ;
 int othercase (int ) ;
 int p_bracket (struct parse*) ;
 size_t wcrtomb (char*,int ,int *) ;

__attribute__((used)) static void
bothcases(struct parse *p, wint_t ch)
{
 const char *oldnext = p->next;
 const char *oldend = p->end;
 char bracket[3 + MB_LEN_MAX];
 size_t n;
 mbstate_t mbs;

 assert(othercase(ch) != ch);
 p->next = bracket;
 memset(&mbs, 0, sizeof(mbs));
 n = wcrtomb(bracket, ch, &mbs);
 assert(n != (size_t)-1);
 bracket[n] = ']';
 bracket[n + 1] = '\0';
 p->end = bracket+n+1;
 p_bracket(p);
 assert(p->next == p->end);
 p->next = oldnext;
 p->end = oldend;
}
