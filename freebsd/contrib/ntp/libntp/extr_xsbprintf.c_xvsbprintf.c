
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int EINVAL ;
 int errno ;
 int vsnprintf (char*,size_t,char const*,int ) ;

int
xvsbprintf(
 char **ppbuf,
 char * const pend,
 char const *pfmt,
 va_list va
 )
{
 char *pbuf = (ppbuf) ? *ppbuf : ((void*)0);
 int rc = -1;
 if (pbuf && (pend - pbuf > 0)) {
  size_t blen = (size_t)(pend - pbuf);
  rc = vsnprintf(pbuf, blen, pfmt, va);
  if (rc > 0) {
      if ((size_t)rc >= blen)
   rc = 0;
      pbuf += rc;
  }
  *pbuf = '\0';
  *ppbuf = pbuf;
 } else {
  errno = EINVAL;
 }
 return rc;
}
