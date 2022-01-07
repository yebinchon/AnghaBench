
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {scalar_t__ length; scalar_t__ digits; } ;
typedef TYPE_1__ hex_decode_ctx_t ;


 int ISC_R_BADHEX ;
 int ISC_R_SUCCESS ;
 int ISC_R_UNEXPECTEDEND ;

__attribute__((used)) static inline isc_result_t
hex_decode_finish(hex_decode_ctx_t *ctx) {
 if (ctx->length > 0)
  return (ISC_R_UNEXPECTEDEND);
 if (ctx->digits != 0)
  return (ISC_R_BADHEX);
 return (ISC_R_SUCCESS);
}
