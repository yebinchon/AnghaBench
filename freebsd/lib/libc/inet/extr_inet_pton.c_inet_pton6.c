
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int NS_IN6ADDRSZ ;
 int NS_INADDRSZ ;
 int NS_INT16SZ ;
 scalar_t__ inet_pton4 (char const*,int*) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,char,int) ;
 char* strchr (char const*,int) ;

__attribute__((used)) static int
inet_pton6(const char *src, u_char *dst)
{
 static const char xdigits_l[] = "0123456789abcdef",
     xdigits_u[] = "0123456789ABCDEF";
 u_char tmp[NS_IN6ADDRSZ], *tp, *endp, *colonp;
 const char *xdigits, *curtok;
 int ch, seen_xdigits;
 u_int val;

 memset((tp = tmp), '\0', NS_IN6ADDRSZ);
 endp = tp + NS_IN6ADDRSZ;
 colonp = ((void*)0);

 if (*src == ':')
  if (*++src != ':')
   return (0);
 curtok = src;
 seen_xdigits = 0;
 val = 0;
 while ((ch = *src++) != '\0') {
  const char *pch;

  if ((pch = strchr((xdigits = xdigits_l), ch)) == ((void*)0))
   pch = strchr((xdigits = xdigits_u), ch);
  if (pch != ((void*)0)) {
   val <<= 4;
   val |= (pch - xdigits);
   if (++seen_xdigits > 4)
    return (0);
   continue;
  }
  if (ch == ':') {
   curtok = src;
   if (!seen_xdigits) {
    if (colonp)
     return (0);
    colonp = tp;
    continue;
   } else if (*src == '\0') {
    return (0);
   }
   if (tp + NS_INT16SZ > endp)
    return (0);
   *tp++ = (u_char) (val >> 8) & 0xff;
   *tp++ = (u_char) val & 0xff;
   seen_xdigits = 0;
   val = 0;
   continue;
  }
  if (ch == '.' && ((tp + NS_INADDRSZ) <= endp) &&
      inet_pton4(curtok, tp) > 0) {
   tp += NS_INADDRSZ;
   seen_xdigits = 0;
   break;
  }
  return (0);
 }
 if (seen_xdigits) {
  if (tp + NS_INT16SZ > endp)
   return (0);
  *tp++ = (u_char) (val >> 8) & 0xff;
  *tp++ = (u_char) val & 0xff;
 }
 if (colonp != ((void*)0)) {




  const int n = tp - colonp;
  int i;

  if (tp == endp)
   return (0);
  for (i = 1; i <= n; i++) {
   endp[- i] = colonp[n - i];
   colonp[n - i] = 0;
  }
  tp = endp;
 }
 if (tp != endp)
  return (0);
 memcpy(dst, tmp, NS_IN6ADDRSZ);
 return (1);
}
