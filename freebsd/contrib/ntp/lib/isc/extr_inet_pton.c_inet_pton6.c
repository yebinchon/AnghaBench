
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NS_IN6ADDRSZ ;
 int NS_INADDRSZ ;
 int NS_INT16SZ ;
 scalar_t__ inet_pton4 (char const*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,char,int) ;
 char* strchr (char const*,int) ;

__attribute__((used)) static int
inet_pton6(const char *src, unsigned char *dst) {
 static const char xdigits_l[] = "0123456789abcdef",
     xdigits_u[] = "0123456789ABCDEF";
 unsigned char tmp[NS_IN6ADDRSZ], *tp, *endp, *colonp;
 const char *xdigits, *curtok;
 int ch, seen_xdigits;
 unsigned int val;

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
   }
   if (NS_INT16SZ > endp - tp)
    return (0);
   *tp++ = (unsigned char) (val >> 8) & 0xff;
   *tp++ = (unsigned char) val & 0xff;
   seen_xdigits = 0;
   val = 0;
   continue;
  }
  if (ch == '.' && (NS_INADDRSZ <= endp - tp) &&
      inet_pton4(curtok, tp) > 0) {
   tp += NS_INADDRSZ;
   seen_xdigits = 0;
   break;
  }
  return (0);
 }
 if (seen_xdigits) {
  if (NS_INT16SZ > endp - tp)
   return (0);
  *tp++ = (unsigned char) (val >> 8) & 0xff;
  *tp++ = (unsigned char) val & 0xff;
 }
 if (colonp != ((void*)0)) {




  const size_t n = tp - colonp;
  int i;

  if (tp == endp)
   return (0);
  for (i = 1; (size_t)i <= n; i++) {
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
