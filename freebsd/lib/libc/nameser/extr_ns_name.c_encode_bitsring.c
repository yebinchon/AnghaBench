
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char DNS_LABELTYPE_BITSTRING ;
 int EINVAL ;
 int EMSGSIZE ;
 int* digitvalue ;
 int isdigit (char) ;
 int isxdigit (char const) ;
 scalar_t__ strtol (char const*,char**,int) ;

__attribute__((used)) static int
encode_bitsring(const char **bp, const char *end, unsigned char **labelp,
  unsigned char ** dst, unsigned const char *eom)
{
 int afterslash = 0;
 const char *cp = *bp;
 unsigned char *tp;
 char c;
 const char *beg_blen;
 char *end_blen = ((void*)0);
 int value = 0, count = 0, tbcount = 0, blen = 0;

 beg_blen = end_blen = ((void*)0);


 if (end - cp < 2)
  return (EINVAL);


 if (*cp++ != 'x')
  return (EINVAL);
 if (!isxdigit((*cp) & 0xff))
  return (EINVAL);

 for (tp = *dst + 1; cp < end && tp < eom; cp++) {
  switch((c = *cp)) {
  case ']':
   if (afterslash) {
    if (beg_blen == ((void*)0))
     return (EINVAL);
    blen = (int)strtol(beg_blen, &end_blen, 10);
    if (*end_blen != ']')
     return (EINVAL);
   }
   if (count)
    *tp++ = ((value << 4) & 0xff);
   cp++;
   goto done;
  case '/':
   afterslash = 1;
   break;
  default:
   if (afterslash) {
    if (!isdigit(c&0xff))
     return (EINVAL);
    if (beg_blen == ((void*)0)) {

     if (c == '0') {

      return (EINVAL);
     }
     beg_blen = cp;
    }
   } else {
    if (!isxdigit(c&0xff))
     return (EINVAL);
    value <<= 4;
    value += digitvalue[(int)c];
    count += 4;
    tbcount += 4;
    if (tbcount > 256)
     return (EINVAL);
    if (count == 8) {
     *tp++ = value;
     count = 0;
    }
   }
   break;
  }
 }
  done:
 if (cp >= end || tp >= eom)
  return (EMSGSIZE);
 if (blen > 0) {
  int traillen;

  if (((blen + 3) & ~3) != tbcount)
   return (EINVAL);
  traillen = tbcount - blen;
  if (((value << (8 - traillen)) & 0xff) != 0)
   return (EINVAL);
 }
 else
  blen = tbcount;
 if (blen == 256)
  blen = 0;


 **labelp = DNS_LABELTYPE_BITSTRING;
 **dst = blen;

 *bp = cp;
 *dst = tp;

 return (0);
}
