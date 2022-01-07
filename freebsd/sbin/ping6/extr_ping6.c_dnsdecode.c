
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int cresult ;


 int MAXDNAME ;
 scalar_t__ isprint (int const) ;
 int snprintf (char*,int,char*,int const) ;
 size_t strlcat (char*,char*,size_t) ;

__attribute__((used)) static const char *
dnsdecode(const u_char *sp, const u_char *ep, const u_char *base, char *buf,
 size_t bufsiz)
{
 int i;
 const u_char *cp;
 char cresult[MAXDNAME + 1];
 const u_char *comp;
 int l;

 cp = sp;
 *buf = '\0';

 if (cp >= ep)
  return ((void*)0);
 while (cp < ep) {
  i = *cp;
  if (i == 0 || cp != sp) {
   if (strlcat((char *)buf, ".", bufsiz) >= bufsiz)
    return ((void*)0);
  }
  if (i == 0)
   break;
  cp++;

  if ((i & 0xc0) == 0xc0 && cp - base > (i & 0x3f)) {

   if (!base)
    return ((void*)0);

   comp = base + (i & 0x3f);
   if (dnsdecode(comp, cp, base, cresult,
       sizeof(cresult)) == ((void*)0))
    return ((void*)0);
   if (strlcat(buf, cresult, bufsiz) >= bufsiz)
    return ((void*)0);
   break;
  } else if ((i & 0x3f) == i) {
   if (i > ep - cp)
    return ((void*)0);
   while (i-- > 0 && cp < ep) {
    l = snprintf(cresult, sizeof(cresult),
        isprint(*cp) ? "%c" : "\\%03o", *cp & 0xff);
    if ((size_t)l >= sizeof(cresult) || l < 0)
     return ((void*)0);
    if (strlcat(buf, cresult, bufsiz) >= bufsiz)
     return ((void*)0);
    cp++;
   }
  } else
   return ((void*)0);
 }
 if (i != 0)
  return ((void*)0);
 cp++;
 return cp;
}
