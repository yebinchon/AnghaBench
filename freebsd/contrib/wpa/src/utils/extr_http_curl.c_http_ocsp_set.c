
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {int ocsp; } ;


 int MANDATORY_OCSP ;
 int NO_OCSP ;
 int OPTIONAL_OCSP ;

void http_ocsp_set(struct http_ctx *ctx, int val)
{
 if (val == 0)
  ctx->ocsp = NO_OCSP;
 else if (val == 1)
  ctx->ocsp = OPTIONAL_OCSP;
 if (val == 2)
  ctx->ocsp = MANDATORY_OCSP;
}
