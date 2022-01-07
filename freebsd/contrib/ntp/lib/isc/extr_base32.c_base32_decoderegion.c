
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_4__ {scalar_t__ length; int* base; } ;
typedef TYPE_1__ isc_region_t ;
typedef int isc_buffer_t ;
typedef int base32_decode_ctx_t ;


 int ISC_R_SUCCESS ;
 int RETERR (int ) ;
 int base32_decode_char (int *,int) ;
 int base32_decode_finish (int *) ;
 int base32_decode_init (int *,int,char const*,int *) ;
 int isc_region_consume (TYPE_1__*,int) ;

__attribute__((used)) static isc_result_t
base32_decoderegion(isc_region_t *source, const char base[], isc_buffer_t *target) {
 base32_decode_ctx_t ctx;

 base32_decode_init(&ctx, -1, base, target);
 while (source->length != 0) {
  int c = *source->base;
  RETERR(base32_decode_char(&ctx, c));
  isc_region_consume(source, 1);
 }
 RETERR(base32_decode_finish(&ctx));
 return (ISC_R_SUCCESS);
}
