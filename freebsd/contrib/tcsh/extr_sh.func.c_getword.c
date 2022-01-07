
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int len; } ;
typedef char eChar ;
typedef int Char ;


 char CHAR_ERR ;
 int ERR_NAME ;
 int ERR_NOTFOUND ;
 int Sgoal ;
 int Strbuf_append1 (struct Strbuf*,int ) ;
 int Strbuf_terminate (struct Strbuf*) ;
 int Stype ;






 char readc (int) ;
 int setname (int ) ;
 int short2str (int ) ;
 int stderror (int,char*) ;
 int unreadc (char) ;

__attribute__((used)) static int
getword(struct Strbuf *wp)
{
    int found = 0, first;
    eChar c, d;

    if (wp)
 wp->len = 0;
    c = readc(1);
    d = 0;
    do {
 while (c == ' ' || c == '\t')
     c = readc(1);
 if (c == '#')
     do
  c = readc(1);
     while (c != CHAR_ERR && c != '\n');
 if (c == CHAR_ERR)
     goto past;
 if (c == '\n') {
     if (wp)
  break;
     return (0);
 }
 unreadc(c);
 found = 1;
 first = 1;
 do {
     c = readc(1);
     if (c == '\\' && (c = readc(1)) == '\n')
  c = ' ';
     if (c == '\'' || c == '"') {
  if (d == 0)
      d = c;
  else if (d == c)
      d = 0;
     }
     if (c == CHAR_ERR)
  goto past;
     if (wp)
  Strbuf_append1(wp, (Char) c);
     if (!d && c == ')') {
  if (!first && wp) {
      goto past_word_end;
  } else {
      if (wp) {
   wp->len = 1;
   Strbuf_terminate(wp);
      }
      return found;
  }
     }
     if (!first && !d && c == '(') {
  if (wp)
      goto past_word_end;
  else
      break;
     }
     first = 0;
 } while ((d || (c != ' ' && c != '\t')) && c != '\n');
    } while (wp == 0);

 past_word_end:
    unreadc(c);
    if (found) {
 wp->len--;
 Strbuf_terminate(wp);
    }

    return (found);

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

    return (0);
}
