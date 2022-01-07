
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_t ;
typedef TYPE_2__* gss_OID ;
struct TYPE_8__ {int length; unsigned char* elements; } ;
struct TYPE_7__ {int length; unsigned char* value; } ;
typedef int OM_uint32 ;


 int GSS_S_COMPLETE ;
 int GSS_S_DEFECTIVE_TOKEN ;
 int _gss_buffer_zero (TYPE_1__*) ;
 unsigned char* malloc (size_t) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

OM_uint32
gss_encapsulate_token(const gss_buffer_t input_token, gss_OID oid,
    gss_buffer_t output_token)
{
 unsigned char *p;
 size_t len, inside_len;
 size_t a, b;
 int i;

 _gss_buffer_zero(output_token);





 p = ((void*)0);
 for (i = 0; i < 2; i++) {
  len = 0;




  if (p)
   *p++ = 0x60;
  len++;






  if (oid->length > 127)
   return (GSS_S_DEFECTIVE_TOKEN);

  inside_len = 2 + oid->length + input_token->length;




  if (inside_len < 128) {
   if (p)
    *p++ = inside_len;
   len++;
  } else {
   b = 1;
   if (inside_len >= 0x100)
    b++;
   if (inside_len >= 0x10000)
    b++;
   if (inside_len >= 0x1000000)
    b++;
   if (p)
    *p++ = b | 0x80;
   len++;
   a = inside_len << 8*(4 - b);
   while (b) {
    if (p)
     *p++ = (a >> 24);
    a <<= 8;
    len++;
    b--;
   }
  }





  if (p)
   *p++ = 0x06;
  len++;
  if (p)
   *p++ = oid->length;
  len++;
  if (p) {
   memcpy(p, oid->elements, oid->length);
   p += oid->length;
  }
  len += oid->length;

  if (p) {
   memcpy(p, input_token->value, input_token->length);
   p += input_token->length;
  }
  len += input_token->length;

  if (i == 0) {
   output_token->length = len;
   output_token->value = malloc(len);
   if (!output_token->value)
    return (GSS_S_DEFECTIVE_TOKEN);
   p = output_token->value;
  }
 }

 return (GSS_S_COMPLETE);
}
