
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*,char const*) ;
 int dprintf (char*) ;
 scalar_t__ realloc (char*,int) ;

int adjbuf(char **pbuf, int *psiz, int minlen, int quantum, char **pbptr,
 const char *whatrtn)
{
 if (minlen > *psiz) {
  char *tbuf;
  int rminlen = quantum ? minlen % quantum : 0;
  int boff = pbptr ? *pbptr - *pbuf : 0;

  if (rminlen)
   minlen += quantum - rminlen;
  tbuf = (char *) realloc(*pbuf, minlen);
  dprintf( ("adjbuf %s: %d %d (pbuf=%p, tbuf=%p)\n", whatrtn, *psiz, minlen, (void *) *pbuf, (void *) tbuf) );
  if (tbuf == ((void*)0)) {
   if (whatrtn)
    FATAL("out of memory in %s", whatrtn);
   return 0;
  }
  *pbuf = tbuf;
  *psiz = minlen;
  if (pbptr)
   *pbptr = tbuf + boff;
 }
 return 1;
}
