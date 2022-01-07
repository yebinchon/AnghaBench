
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_int8_t ;
typedef size_t u_int ;


 int memcpy (char*,char const*,int) ;
 int sprintf (char*,char*,char const) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int
copy_essid(char buf[], size_t bufsize, const u_int8_t *essid, size_t essid_len)
{
 const u_int8_t *p;
 size_t maxlen;
 u_int i;

 if (essid_len > bufsize)
  maxlen = bufsize;
 else
  maxlen = essid_len;

 for (i = 0, p = essid; i < maxlen; i++, p++) {
  if (*p < ' ' || *p > 0x7e)
   break;
 }
 if (i != maxlen) {
  if (bufsize < 3)
   return 0;
  strlcpy(buf, "0x", bufsize);
  bufsize -= 2;
  p = essid;
  for (i = 0; i < maxlen && bufsize >= 2; i++) {
   sprintf(&buf[2+2*i], "%02x", p[i]);
   bufsize -= 2;
  }
  if (i != essid_len)
   memcpy(&buf[2+2*i-3], "...", 3);
 } else {
  memcpy(buf, essid, maxlen);
  if (maxlen != essid_len)
   memcpy(&buf[maxlen-3], "...", 3);
 }
 return maxlen;
}
