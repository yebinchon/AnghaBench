
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;


 size_t mbrlen (char const*,int,int *) ;

__attribute__((used)) static size_t
wbuflen(const mbstate_t *state, const char *buf, int len)
{
 mbstate_t lenstate;
 size_t charlen, count;

 count = 0;
 lenstate = *state;
 while (len > 0) {
  charlen = mbrlen(buf, len, &lenstate);
  if (charlen == (size_t)-1)
   return (-1);
  if (charlen == (size_t)-2)
   break;
  if (charlen == 0)

   charlen = 1;
  len -= charlen;
  buf += charlen;
  count++;
 }
 return (count);
}
