
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; TYPE_1__* cur_read; scalar_t__ amt_read; } ;
typedef TYPE_2__ headers_context_t ;
typedef int apr_status_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int APR_EOF ;
 int APR_SUCCESS ;
 scalar_t__ READ_DONE ;
 scalar_t__ READ_HEADER ;
 scalar_t__ READ_TERM ;

__attribute__((used)) static apr_status_t consume_chunk(headers_context_t *ctx)
{

    ++ctx->state;
    ctx->amt_read = 0;


    if (ctx->state == READ_DONE)
        return APR_EOF;


    if (ctx->state == READ_TERM) {
        ctx->cur_read = ctx->cur_read->next;
        if (ctx->cur_read != ((void*)0)) {

            ctx->state = READ_HEADER;
        }

    }


    return APR_SUCCESS;
}
