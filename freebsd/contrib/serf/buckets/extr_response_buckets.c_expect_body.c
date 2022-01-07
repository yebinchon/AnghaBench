
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int code; } ;
struct TYPE_5__ {TYPE_1__ sl; scalar_t__ head_req; } ;
typedef TYPE_2__ response_context_t ;



__attribute__((used)) static int expect_body(response_context_t *ctx)
{
    if (ctx->head_req)
        return 0;


    if (ctx->sl.code >= 100 && ctx->sl.code < 200)
        return 0;


    if (ctx->sl.code == 204)
        return 0;




    if (ctx->sl.code == 304)
        return 0;

    return 1;
}
