
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ibcw; } ;
typedef int SCR ;
typedef char CHAR_T ;


 int CHAR2INT5 (int *,int ,char*,scalar_t__,char*,size_t) ;
 TYPE_1__* EXP (int *) ;
 int FREE_SPACE (int *,char*,size_t) ;
 int GET_SPACE_GOTOC (int *,char*,size_t,size_t) ;
 int ISPRINT (char) ;
 char* KEY_NAME (int *,char) ;
 int free (char*) ;
 char* malloc (size_t) ;
 scalar_t__ strlen (char const*) ;

char *
msg_print(
 SCR *sp,
 const char *s,
 int *needfree)
{
 size_t blen, nlen;
 char *bp, *ep, *p, *t;
 CHAR_T *wp, *cp;
 size_t wlen;

 *needfree = 0;


 CHAR2INT5(sp, EXP(sp)->ibcw, (char *)s, strlen(s) + 1, wp, wlen);
 for (cp = wp; *cp != '\0'; ++cp)
  if (!ISPRINT(*cp))
   break;
 if (*cp == '\0')
  return ((char *)s);

 nlen = 0;
 if (0) {
retry: if (sp == ((void*)0))
   free(bp);
  else
   FREE_SPACE(sp, bp, blen);
  *needfree = 0;
 }
 nlen += 256;
 if (sp == ((void*)0)) {
  if ((bp = malloc(nlen)) == ((void*)0))
   goto alloc_err;
 } else
  GET_SPACE_GOTOC(sp, bp, blen, nlen);
 if (0) {
alloc_err: return ("");
 }
 *needfree = 1;

 for (p = bp, ep = (bp + blen) - 1; *wp != '\0' && p < ep; ++wp)
  for (t = KEY_NAME(sp, *wp); *t != '\0' && p < ep; *p++ = *t++);
 if (p == ep)
  goto retry;
 *p = '\0';
 return (bp);
}
