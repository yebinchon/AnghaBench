
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;
typedef char CHAR_T ;


 int GET_SPACE_GOTOW (int *,char*,size_t,size_t) ;
 scalar_t__ IS_ESCAPE (int *,int *,char) ;

CHAR_T *
argv_uesc(SCR *sp, EXCMD *excp, CHAR_T *str, size_t len)
{
 size_t blen;
 CHAR_T *bp, *p;

 GET_SPACE_GOTOW(sp, bp, blen, len + 1);

 for (p = bp; len > 0; ++str, --len) {
  if (IS_ESCAPE(sp, excp, *str)) {
   if (--len < 1)
    break;
   ++str;
  } else if (*str == '\\') {
   if (--len < 1)
    break;
   ++str;


   if (*str == '\\' && len > 1)
    switch (str[1]) {
    case '!': case '%': case '#':
     ++str;
     --len;
    }
  }
  *p++ = *str;
 }
 *p = '\0';

 return bp;

alloc_err:
 return ((void*)0);
}
