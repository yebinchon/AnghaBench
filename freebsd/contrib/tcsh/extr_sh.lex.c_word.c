
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int dummy; } ;
typedef char eChar ;
typedef char Char ;


 int DOALL ;
 int DOEXCL ;
 int ERR_UNMATCHED ;
 int ERR_WTOOLONG ;
 scalar_t__ HIST ;
 int Htime ;
 char QUOTE ;
 struct Strbuf Strbuf_INIT ;
 int Strbuf_append1 (struct Strbuf*,char) ;
 int Strbuf_cleanup ;
 char* Strbuf_finish (struct Strbuf*) ;
 int _ESC ;
 int _META ;
 int _QB ;
 int _QF ;
 int a2time_t (char*) ;
 scalar_t__ bslash_quote ;
 int cleanup_ignore (struct Strbuf*) ;
 int cleanup_push (struct Strbuf*,int ) ;
 int cleanup_until (struct Strbuf*) ;
 scalar_t__ cmap (char,int) ;
 scalar_t__ enterhist ;
 char getC (int) ;
 scalar_t__ intty ;
 int onelflg ;
 int seterror (int ,...) ;
 int ungetC (char) ;

__attribute__((used)) static Char *
word(int parsehtime)
{
    eChar c, c1;
    struct Strbuf wbuf = Strbuf_INIT;
    Char hbuf[12];
    int h;
    int dolflg;
    int toolong = 0;

    cleanup_push(&wbuf, Strbuf_cleanup);
loop:
    if (enterhist && toolong++ > 256 * 1024)
 seterror(ERR_WTOOLONG);
    while ((c = getC(DOALL)) == ' ' || c == '\t')
 continue;
    if (cmap(c, _META | _ESC))
 switch (c) {
 case '&':
 case '|':
 case '<':
 case '>':
     Strbuf_append1(&wbuf, c);
     c1 = getC(DOALL);
     if (c1 == c)
  Strbuf_append1(&wbuf, c1);
     else
  ungetC(c1);
     goto ret;

 case '#':
     if (intty || (enterhist && !parsehtime))
  break;
     c = 0;
     h = 0;
     do {
  c1 = c;
  c = getC(0);
  if (h < 11 && parsehtime)
      hbuf[h++] = c;
     } while (c != '\n');
     if (parsehtime) {
  hbuf[11] = '\0';
  Htime = a2time_t(hbuf);
     }
     if (c1 == '\\')
  goto loop;


 case ';':
 case '(':
 case ')':
 case '\n':
     Strbuf_append1(&wbuf, c);
     goto ret;

 case '\\':
     c = getC(0);
     if (c == '\n') {
  if (onelflg == 1)
      onelflg = 2;
  goto loop;
     }
     if (c != (eChar)HIST)
  Strbuf_append1(&wbuf, '\\');
     c |= QUOTE;
 default:
     break;
 }
    c1 = 0;
    dolflg = DOALL;
    for (;;) {
 if (enterhist && toolong++ > 256 * 1024)
     seterror(ERR_WTOOLONG);
 if (c1) {
     if (c == c1) {
  c1 = 0;
  dolflg = DOALL;
     }
     else if (c == '\\') {
  c = getC(0);







  if (c == (eChar)HIST)
      c |= QUOTE;
  else {
      if (bslash_quote &&
   ((c == '\'') || (c == '"') ||
    (c == '\\') || (c == '$'))) {
   c |= QUOTE;
      }
      else {
   if (c == '\n')



       c |= QUOTE;
   ungetC(c);
   c = '\\' | QUOTE;
      }
  }
     }
     else if (c == '\n') {
  seterror(ERR_UNMATCHED, c1);
  ungetC(c);
  break;
     }
 }
 else if (cmap(c, _META | _QF | _QB | _ESC)) {
     if (c == '\\') {
  c = getC(0);
  if (c == '\n') {
      if (onelflg == 1)
   onelflg = 2;
      break;
  }
  if (c != (eChar)HIST)
      Strbuf_append1(&wbuf, '\\');
  c |= QUOTE;
     }
     else if (cmap(c, _QF | _QB)) {
  c1 = c;
  dolflg = c == '"' ? DOALL : DOEXCL;
     }
     else if (c != '#' || (!intty && !enterhist)) {
  ungetC(c);
  break;
     }
 }
 Strbuf_append1(&wbuf, c);
 c = getC(dolflg);
    }
ret:
    cleanup_ignore(&wbuf);
    cleanup_until(&wbuf);
    return Strbuf_finish(&wbuf);
}
