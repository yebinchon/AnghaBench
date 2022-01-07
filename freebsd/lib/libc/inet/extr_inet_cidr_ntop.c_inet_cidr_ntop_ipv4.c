
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;


 int EINVAL ;
 int EMSGSIZE ;
 int SPRINTF (char*) ;
 size_t decoct (scalar_t__ const*,size_t,char*,size_t) ;
 int errno ;

__attribute__((used)) static char *
inet_cidr_ntop_ipv4(const u_char *src, int bits, char *dst, size_t size) {
 char *odst = dst;
 size_t len = 4;
 size_t b;
 size_t bytes;

 if ((bits < -1) || (bits > 32)) {
  errno = EINVAL;
  return (((void*)0));
 }


 if (bits == -1)
  len = 4;
 else
  for (len = 1, b = 1 ; b < 4U; b++)
   if (*(src + b))
    len = b + 1;


 bytes = (((bits <= 0) ? 1 : bits) + 7) / 8;
 if (len > bytes)
  bytes = len;
 b = decoct(src, bytes, dst, size);
 if (b == 0U)
  goto emsgsize;
 dst += b;
 size -= b;

 if (bits != -1) {

  if (size < sizeof "/32")
   goto emsgsize;
  dst += SPRINTF((dst, "/%u", bits));
 }

 return (odst);

 emsgsize:
 errno = EMSGSIZE;
 return (((void*)0));
}
