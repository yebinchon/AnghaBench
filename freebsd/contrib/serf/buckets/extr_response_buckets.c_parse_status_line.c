
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int serf_bucket_alloc_t ;
struct TYPE_6__ {scalar_t__ used; char* line; } ;
struct TYPE_5__ {int reason; int code; int version; } ;
struct TYPE_7__ {TYPE_2__ linebuf; TYPE_1__ sl; } ;
typedef TYPE_3__ response_context_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int SERF_ERROR_BAD_HTTP_RESPONSE ;
 int SERF_HTTP_VERSION (char,char) ;
 scalar_t__ SERF_LINEBUF_LIMIT ;
 int apr_date_checkmask (char*,char*) ;
 scalar_t__ apr_isspace (char) ;
 int apr_strtoi64 (char*,char**,int) ;
 int serf_bstrmemdup (int *,char*,int) ;

__attribute__((used)) static apr_status_t parse_status_line(response_context_t *ctx,
                                      serf_bucket_alloc_t *allocator)
{
    int res;
    char *reason;


    if (ctx->linebuf.used >= SERF_LINEBUF_LIMIT) {
       return SERF_ERROR_BAD_HTTP_RESPONSE;
    }


    ctx->linebuf.line[ctx->linebuf.used] = '\0';




    res = apr_date_checkmask(ctx->linebuf.line, "HTTP/#.# ###*");
    if (!res) {

        return SERF_ERROR_BAD_HTTP_RESPONSE;
    }

    ctx->sl.version = SERF_HTTP_VERSION(ctx->linebuf.line[5] - '0',
                                        ctx->linebuf.line[7] - '0');
    ctx->sl.code = apr_strtoi64(ctx->linebuf.line + 8, &reason, 10);


    if (apr_isspace(*reason)) {
        reason++;
    }


    ctx->sl.reason = serf_bstrmemdup(allocator, reason,
                                     ctx->linebuf.used
                                     - (reason - ctx->linebuf.line));

    return APR_SUCCESS;
}
