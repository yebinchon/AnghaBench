
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;


 int MB_CUR_MAX ;
 int free (int*) ;
 int initial_mbs ;
 int* malloc (size_t) ;
 size_t mbrlen (char const*,int ,int *) ;
 size_t mbrtowc (int*,char const*,size_t,int *) ;
 size_t strlen (char*) ;

__attribute__((used)) static wchar_t *
__mbsconv(char *mbsarg, int prec)
{
 mbstate_t mbs;
 wchar_t *convbuf, *wcp;
 const char *p;
 size_t insize, nchars, nconv;

 if (mbsarg == ((void*)0))
  return (((void*)0));





 if (prec >= 0) {




  p = mbsarg;
  insize = nchars = nconv = 0;
  mbs = initial_mbs;
  while (nchars != (size_t)prec) {
   nconv = mbrlen(p, MB_CUR_MAX, &mbs);
   if (nconv == 0 || nconv == (size_t)-1 ||
       nconv == (size_t)-2)
    break;
   p += nconv;
   nchars++;
   insize += nconv;
  }
  if (nconv == (size_t)-1 || nconv == (size_t)-2)
   return (((void*)0));
 } else {
  insize = strlen(mbsarg);
  nconv = 0;
 }






 convbuf = malloc((insize + 1) * sizeof(*convbuf));
 if (convbuf == ((void*)0))
  return (((void*)0));
 wcp = convbuf;
 p = mbsarg;
 mbs = initial_mbs;
 while (insize != 0) {
  nconv = mbrtowc(wcp, p, insize, &mbs);
  if (nconv == 0 || nconv == (size_t)-1 || nconv == (size_t)-2)
   break;
  wcp++;
  p += nconv;
  insize -= nconv;
 }
 if (nconv == (size_t)-1 || nconv == (size_t)-2) {
  free(convbuf);
  return (((void*)0));
 }
 *wcp = L'\0';

 return (convbuf);
}
