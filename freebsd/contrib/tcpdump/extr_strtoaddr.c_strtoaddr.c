
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int ptrdiff_t ;


 int NS_INADDRSZ ;
 int htonl (int) ;
 scalar_t__ isdigit (unsigned char) ;
 int isspace (unsigned char) ;
 int memcpy (void*,int*,int ) ;

int
strtoaddr(const char *src, void *dst)
{
 uint32_t val;
 u_int digit;
 ptrdiff_t n;
 unsigned char c;
 u_int parts[4];
 u_int *pp = parts;

 c = *src;
 for (;;) {





  if (!isdigit(c))
   return (0);
  val = 0;
  if (c == '0') {
   c = *++src;
   if (c == 'x' || c == 'X')
    return (0);
   else if (isdigit(c) && c != '9')
    return (0);
  }
  for (;;) {
   if (isdigit(c)) {
    digit = c - '0';
    if (digit >= 10)
     break;
    val = (val * 10) + digit;
    c = *++src;
   } else
    break;
  }
  if (c == '.') {







   if (pp >= parts + 3)
    return (0);
   *pp++ = val;
   c = *++src;
  } else
   break;
 }



 if (c != '\0' && !isspace(c))
  return (0);





 n = pp - parts + 1;
 if (n != 4)
  return (0);






 if ((parts[0] | parts[1] | parts[2] | val) > 0xff)
  return (0);



 val |= (parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8);
 if (dst) {
  val = htonl(val);
  memcpy(dst, &val, NS_INADDRSZ);
 }
 return (1);
}
