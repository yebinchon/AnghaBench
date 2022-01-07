
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_t ;
typedef TYPE_2__* gss_OID ;
struct TYPE_6__ {unsigned char length; unsigned char* elements; } ;
struct TYPE_5__ {unsigned char* value; size_t length; } ;
typedef int OM_uint32 ;


 int GSS_S_COMPLETE ;
 int GSS_S_DEFECTIVE_TOKEN ;

__attribute__((used)) static OM_uint32
parse_header(const gss_buffer_t input_token, gss_OID mech_oid)
{
 unsigned char *p = input_token->value;
 size_t len = input_token->length;
 size_t a, b;





 if (len == 0)
  return (GSS_S_DEFECTIVE_TOKEN);

 p++;
 len--;





 if (len == 0)
  return (GSS_S_DEFECTIVE_TOKEN);
 if ((*p & 0x80) == 0) {
  a = *p;
  p++;
  len--;
 } else {
  b = *p & 0x7f;
  p++;
  len--;
  if (len < b)
      return (GSS_S_DEFECTIVE_TOKEN);
  a = 0;
  while (b) {
      a = (a << 8) | *p;
      p++;
      len--;
      b--;
  }
 }
 if (a != len)
  return (GSS_S_DEFECTIVE_TOKEN);





 if (len < 2 || *p != 0x06)
  return (GSS_S_DEFECTIVE_TOKEN);
 if ((p[1] & 0x80) || p[1] > (len - 2))
  return (GSS_S_DEFECTIVE_TOKEN);
 mech_oid->length = p[1];
 p += 2;
 len -= 2;
 mech_oid->elements = p;

 return (GSS_S_COMPLETE);
}
