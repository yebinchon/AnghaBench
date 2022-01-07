
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int CHAR_DBWIDTH ;
 int LITERAL ;
 int LIT_FACTOR ;
 int Strlen (int*) ;
 int Strncmp (int*,scalar_t__*,int) ;
 int Strncpy (scalar_t__*,int*,int) ;
 int litalloc ;
 int litlen ;
 scalar_t__* litptr ;
 int* xrealloc (scalar_t__*,int) ;

__attribute__((used)) static int MakeLiteral(Char *str, int len, Char addlit)
{
    int i, addlitlen = 0;
    Char *addlitptr = 0;
    if (addlit) {
 if ((addlit & LITERAL) != 0) {
     addlitptr = litptr + (addlit & ~LITERAL) * LIT_FACTOR;
     addlitlen = Strlen(addlitptr);
 } else {
     addlitptr = &addlit;
     addlitlen = 1;
 }
 for (i = 0; i < litlen; i += LIT_FACTOR)
     if (!Strncmp(addlitptr, litptr + i, addlitlen) && !Strncmp(str, litptr + i + addlitlen, len) && litptr[i + addlitlen + len] == 0)
  return (i / LIT_FACTOR) | LITERAL;
    } else {
 addlitlen = 0;
 for (i = 0; i < litlen; i += LIT_FACTOR)
     if (!Strncmp(str, litptr + i, len) && litptr[i + len] == 0)
  return (i / LIT_FACTOR) | LITERAL;
    }
    if (litlen + addlitlen + len + 1 + (LIT_FACTOR - 1) > litalloc) {
 Char *newlitptr;
 int add = 256;
 while (len + addlitlen + 1 + (LIT_FACTOR - 1) > add)
     add *= 2;
 newlitptr = xrealloc(litptr, (litalloc + add) * sizeof(Char));
 if (!newlitptr)
     return '?';
 litptr = newlitptr;
 litalloc += add;
 if (addlitptr && addlitptr != &addlit)
     addlitptr = litptr + (addlit & ~LITERAL) * LIT_FACTOR;
    }
    i = litlen / LIT_FACTOR;
    if (i >= LITERAL || i == CHAR_DBWIDTH)
 return '?';
    if (addlitptr) {
 Strncpy(litptr + litlen, addlitptr, addlitlen);
 litlen += addlitlen;
    }
    Strncpy(litptr + litlen, str, len);
    litlen += len;
    do
 litptr[litlen++] = 0;
    while (litlen % LIT_FACTOR);
    return i | LITERAL;
}
