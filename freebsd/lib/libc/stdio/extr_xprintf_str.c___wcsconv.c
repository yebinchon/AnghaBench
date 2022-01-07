
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;


 int MB_LEN_MAX ;
 int free (char*) ;
 char* malloc (size_t) ;
 size_t wcrtomb (char*,int ,int *) ;
 size_t wcsrtombs (char*,int const**,size_t,int *) ;

__attribute__((used)) static char *
__wcsconv(wchar_t *wcsarg, int prec)
{
 static const mbstate_t initial;
 mbstate_t mbs;
 char buf[MB_LEN_MAX];
 wchar_t *p;
 char *convbuf;
 size_t clen, nbytes;


 if (prec < 0) {
  p = wcsarg;
  mbs = initial;
  nbytes = wcsrtombs(((void*)0), (const wchar_t **)&p, 0, &mbs);
  if (nbytes == (size_t)-1)
   return (((void*)0));
 } else {





  if (prec < 128)
   nbytes = prec;
  else {
   nbytes = 0;
   p = wcsarg;
   mbs = initial;
   for (;;) {
    clen = wcrtomb(buf, *p++, &mbs);
    if (clen == 0 || clen == (size_t)-1 ||
        (int)(nbytes + clen) > prec)
     break;
    nbytes += clen;
   }
  }
 }
 if ((convbuf = malloc(nbytes + 1)) == ((void*)0))
  return (((void*)0));


 p = wcsarg;
 mbs = initial;
 if ((nbytes = wcsrtombs(convbuf, (const wchar_t **)&p,
     nbytes, &mbs)) == (size_t)-1) {
  free(convbuf);
  return (((void*)0));
 }
 convbuf[nbytes] = '\0';
 return (convbuf);
}
