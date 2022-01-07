
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef TYPE_1__* gss_OID ;
struct TYPE_3__ {int length; char* elements; } ;


 int EINVAL ;
 int ENOMEM ;
 char* malloc (int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
_rpc_gss_string_to_oid(const char* s, gss_OID oid)
{
 int number_count, i, j;
 int byte_count;
 const char *p, *q;
 char *res;





 number_count = 0;
 for (p = s; p; p = q) {
  q = strchr(p, '.');
  if (q) q = q + 1;
  number_count++;
 }





 if (number_count < 2)
  return (EINVAL);






 res = 0;
 for (i = 0; i < 2; i++) {
  byte_count = 0;
  for (p = s, j = 0; p; p = q, j++) {
   u_int number = 0;




   q = strchr(p, '.');
   if (q) q = q + 1;





   while (*p && *p != '.') {
    number = 10 * number + (*p - '0');
    p++;
   }
   if (j == 0) {
    if (res)
     *res = number * 40;
   } else if (j == 1) {
    if (res) {
     *res += number;
     res++;
    }
    byte_count++;
   } else if (j >= 2) {



    u_int t;
    int bytes;

    bytes = 0;
    for (t = number; t; t >>= 7)
     bytes++;
    if (bytes == 0) bytes = 1;
    while (bytes) {
     if (res) {
      int bit = 7*(bytes-1);

      *res = (number >> bit) & 0x7f;
      if (bytes != 1)
       *res |= 0x80;
      res++;
     }
     byte_count++;
     bytes--;
    }
   }
  }
  if (!res) {
   res = malloc(byte_count);
   if (!res)
    return (ENOMEM);
   oid->length = byte_count;
   oid->elements = res;
  }
 }

 return (0);
}
