
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int dummy; } ;
typedef char eChar ;
typedef int Char ;


 char DEOF ;
 int DODOL ;
 char DgetC (int ) ;
 char QUOTE ;
 int QUOTES ;
 int Strbuf_append1 (struct Strbuf*,int ) ;
 int _NL ;
 int _QB ;
 int _QF ;
 int _SP ;
 scalar_t__ cmap (char,int) ;
 int unDgetC (char) ;
 int unDredc (char) ;

__attribute__((used)) static int
Dpack(struct Strbuf *wbuf)
{
    eChar c;

    for (;;) {
 c = DgetC(DODOL);
 if (c == '\\') {
     c = DgetC(0);
     if (c == DEOF) {
  unDredc(c);
  return 1;
     }
     if (c == '\n')
  c = ' ';
     else
  c |= QUOTE;
 }
 if (c == DEOF) {
     unDredc(c);
     return 1;
 }
 if (cmap(c, _SP | _NL | _QF | _QB)) {
     unDgetC(c);
     if (cmap(c, QUOTES))
  return 0;
     return 1;
 }
 Strbuf_append1(wbuf, (Char) c);
    }
}
