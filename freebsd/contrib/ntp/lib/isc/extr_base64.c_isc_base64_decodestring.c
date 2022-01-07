
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_buffer_t ;
typedef int base64_decode_ctx_t ;


 int ISC_R_SUCCESS ;
 int RETERR (int ) ;
 int base64_decode_char (int *,int) ;
 int base64_decode_finish (int *) ;
 int base64_decode_init (int *,int,int *) ;

isc_result_t
isc_base64_decodestring(const char *cstr, isc_buffer_t *target) {
 base64_decode_ctx_t ctx;

 base64_decode_init(&ctx, -1, target);
 for (;;) {
  int c = *cstr++;
  if (c == '\0')
   break;
  if (c == ' ' || c == '\t' || c == '\n' || c== '\r')
   continue;
  RETERR(base64_decode_char(&ctx, c));
 }
 RETERR(base64_decode_finish(&ctx));
 return (ISC_R_SUCCESS);
}
