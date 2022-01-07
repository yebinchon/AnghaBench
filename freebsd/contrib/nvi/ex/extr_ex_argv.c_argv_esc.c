
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int ADD_SPACE_GOTOW (int *,int*,size_t,size_t) ;
 int CH_LITERAL ;
 int GET_SPACE_GOTOW (int *,int*,size_t,size_t) ;
 scalar_t__ IS_ESCAPE (int *,int *,int) ;
 scalar_t__ cmdskip (int) ;
 int isalnum (int) ;
 int isascii (int) ;

CHAR_T *
argv_esc(SCR *sp, EXCMD *excp, CHAR_T *str, size_t len)
{
 size_t blen, off;
 CHAR_T *bp, *p;
 int ch;

 GET_SPACE_GOTOW(sp, bp, blen, len + 1);
 for (p = bp; len > 0; ++str, --len) {
  ch = *str;
  off = p - bp;
  if (blen / sizeof(CHAR_T) - off < 3) {
   ADD_SPACE_GOTOW(sp, bp, blen, off + 3);
   p = bp + off;
  }
  if (cmdskip(ch) || ch == '\n' ||
      IS_ESCAPE(sp, excp, ch))
   *p++ = CH_LITERAL;
  else switch (ch) {
  case '~':
   if (p != bp)
    *p++ = '\\';
   break;
  case '+':
   if (p == bp)
    *p++ = '\\';
   break;
  case '!': case '%': case '#':
   *p++ = '\\';
   *p++ = '\\';
   break;
  case ',': case '-': case '.': case '/':
  case ':': case '=': case '@': case '_':
   break;
  default:
   if (isascii(ch) && !isalnum(ch))
    *p++ = '\\';
  }
  *p++ = ch;
 }
 *p = '\0';

 return bp;

alloc_err:
 return ((void*)0);
}
