
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;
typedef int buf ;


 int decodetime (char*,int *) ;
 scalar_t__ isspace (int ) ;
 int pgetc (char*) ;

__attribute__((used)) static int
decodearr(
 char *cp,
 int *narr,
 l_fp *lfpa,
 int amax
 )
{
 char *bp;
 char buf[60];

 *narr = 0;

 while (*narr < amax && *cp) {
  if (isspace(pgetc(cp))) {
   do
    ++cp;
   while (*cp && isspace(pgetc(cp)));
  } else {
   bp = buf;
   do {
    if (bp != (buf + sizeof(buf) - 1))
     *bp++ = *cp;
    ++cp;
   } while (*cp && !isspace(pgetc(cp)));
   *bp = '\0';

   if (!decodetime(buf, lfpa))
    return 0;
   ++(*narr);
   ++lfpa;
  }
 }
 return 1;
}
