
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_buffer_t ;
typedef int base32_decode_ctx_t ;


 int ISC_R_SUCCESS ;
 int RETERR (int ) ;
 int base32_decode_char (int *,int) ;
 int base32_decode_finish (int *) ;
 int base32_decode_init (int *,int,char const*,int *) ;

__attribute__((used)) static isc_result_t
base32_decodestring(const char *cstr, const char base[], isc_buffer_t *target) {
 base32_decode_ctx_t ctx;

 base32_decode_init(&ctx, -1, base, target);
 for (;;) {
  int c = *cstr++;
  if (c == '\0')
   break;
  if (c == ' ' || c == '\t' || c == '\n' || c== '\r')
   continue;
  RETERR(base32_decode_char(&ctx, c));
 }
 RETERR(base32_decode_finish(&ctx));
 return (ISC_R_SUCCESS);
}
