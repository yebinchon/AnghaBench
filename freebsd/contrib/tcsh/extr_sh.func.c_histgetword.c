
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {void* word; struct wordent* next; struct wordent* prev; } ;
struct Strbuf {int * s; scalar_t__ len; scalar_t__ size; } ;
typedef char eChar ;
typedef int Char ;


 char CHAR_ERR ;
 int ERR_NAME ;
 int ERR_NOTFOUND ;
 int Sgoal ;
 int Strbuf_append1 (struct Strbuf*,int ) ;
 int Strbuf_terminate (struct Strbuf*) ;
 void* Strsave (int *) ;
 int Stype ;






 char readc (int) ;
 int setname (int ) ;
 int short2str (int ) ;
 int stderror (int,char*) ;
 int unreadc (char) ;
 void* xmalloc (int) ;

__attribute__((used)) static struct wordent *
histgetword(struct wordent *histent)
{
    int first;
    eChar c, d;
    int e;
    struct Strbuf *tmp;
    tmp = xmalloc(sizeof(*tmp));
    tmp->size = 0;
    tmp->s = ((void*)0);
    c = readc(1);
    d = 0;
    e = 0;
    for (;;) {
 tmp->len = 0;
 Strbuf_terminate (tmp);
 while (c == ' ' || c == '\t')
     c = readc(1);
 if (c == '#')
     do
  c = readc(1);
     while (c != CHAR_ERR && c != '\n');
 if (c == CHAR_ERR)
     goto past;
 if (c == '\n')
     goto nl;
 unreadc(c);
 first = 1;
 do {
     e = (c == '\\');
     c = readc(1);
     if (c == '\\' && !e) {
  if ((c = readc(1)) == '\n') {
      e = 1;
      c = ' ';
  } else {
      unreadc(c);
      c = '\\';
  }
     }
     if ((c == '\'' || c == '"') && !e) {
  if (d == 0)
      d = c;
  else if (d == c)
      d = 0;
     }
     if (c == CHAR_ERR)
  goto past;

     Strbuf_append1(tmp, (Char) c);

     if (!first && !d && c == '(' && !e) {
  break;
     }
     first = 0;
 } while (d || e || (c != ' ' && c != '\t' && c != '\n'));
 tmp->len--;
 if (tmp->len) {
     Strbuf_terminate(tmp);
     histent->word = Strsave(tmp->s);
     histent->next = xmalloc(sizeof (*histent));
     histent->next->prev = histent;
     histent = histent->next;
 }
 if (c == '\n') {
 nl:
     tmp->len = 0;
     Strbuf_append1(tmp, (Char) c);
     Strbuf_terminate(tmp);
     histent->word = Strsave(tmp->s);
     return histent;
 }
    }

past:
    switch (Stype) {

    case 129:
 stderror(ERR_NAME | ERR_NOTFOUND, "then/endif");
 break;

    case 131:
 stderror(ERR_NAME | ERR_NOTFOUND, "endif");
 break;

    case 132:
    case 128:
 stderror(ERR_NAME | ERR_NOTFOUND, "endsw");
 break;

    case 133:
 stderror(ERR_NAME | ERR_NOTFOUND, "end");
 break;

    case 130:
 setname(short2str(Sgoal));
 stderror(ERR_NAME | ERR_NOTFOUND, "label");
 break;

    default:
 break;
    }

    return ((void*)0);
}
