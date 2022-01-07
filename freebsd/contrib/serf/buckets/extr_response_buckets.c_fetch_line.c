
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; int linebuf; } ;
typedef TYPE_1__ response_context_t ;
typedef int apr_status_t ;


 int serf_linebuf_fetch (int *,int ,int) ;

__attribute__((used)) static apr_status_t fetch_line(response_context_t *ctx, int acceptable)
{
    return serf_linebuf_fetch(&ctx->linebuf, ctx->stream, acceptable);
}
