
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int serf_bucket_t ;
struct TYPE_5__ {scalar_t__ state; int used; char const* line; } ;
struct TYPE_6__ {TYPE_1__ linebuf; int headers; } ;
typedef TYPE_2__ response_context_t ;
typedef int apr_status_t ;


 scalar_t__ SERF_BUCKET_READ_ERROR (int ) ;
 int SERF_ERROR_BAD_HTTP_RESPONSE ;
 scalar_t__ SERF_LINEBUF_READY ;
 int SERF_NEWLINE_ANY ;
 int apr_isspace (char const) ;
 int fetch_line (TYPE_2__*,int ) ;
 char* memchr (char const*,char,int) ;
 int serf_bucket_headers_setx (int ,char const*,int,int,char const*,int,int) ;

__attribute__((used)) static apr_status_t fetch_headers(serf_bucket_t *bkt, response_context_t *ctx)
{
    apr_status_t status;




    status = fetch_line(ctx, SERF_NEWLINE_ANY);
    if (SERF_BUCKET_READ_ERROR(status)) {
        return status;
    }


    if (ctx->linebuf.state == SERF_LINEBUF_READY && ctx->linebuf.used) {
        const char *end_key;
        const char *c;

        end_key = c = memchr(ctx->linebuf.line, ':', ctx->linebuf.used);
        if (!c) {

            return SERF_ERROR_BAD_HTTP_RESPONSE;
        }


        c++;


        for(; c < ctx->linebuf.line + ctx->linebuf.used; c++)
        {
            if (!apr_isspace(*c))
            {
              break;
            }
        }



        serf_bucket_headers_setx(
            ctx->headers,
            ctx->linebuf.line, end_key - ctx->linebuf.line, 1,
            c, ctx->linebuf.line + ctx->linebuf.used - c, 1);
    }

    return status;
}
