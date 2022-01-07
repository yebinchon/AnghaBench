
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {char const* last_err; } ;



const char * http_get_err(struct http_ctx *ctx)
{
 return ctx->last_err;
}
