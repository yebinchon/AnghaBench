
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {char* line; int used; } ;
struct TYPE_5__ {int type; int * phrase; TYPE_1__ linebuf; void* length; void* channel; } ;
typedef TYPE_2__ incoming_context_t ;
typedef int apr_status_t ;


 int APR_EGENERAL ;
 int APR_SUCCESS ;
 int apr_date_checkmask (char*,char*) ;
 scalar_t__ apr_isspace (char) ;
 void* apr_strtoi64 (char*,char**,int) ;
 int * serf_bstrmemdup (int *,char*,int) ;

__attribute__((used)) static apr_status_t parse_status_line(incoming_context_t *ctx,
                                      serf_bucket_alloc_t *allocator)
{
    int res;
    char *reason;


    res = apr_date_checkmask(ctx->linebuf.line, "BW*");
    if (!res) {

        return APR_EGENERAL;
    }

    if (ctx->linebuf.line[2] == 'H') {
        ctx->type = 0;
    }
    else if (ctx->linebuf.line[2] == 'M') {
        ctx->type = 1;
    }
    else {
        ctx->type = -1;
    }

    ctx->channel = apr_strtoi64(ctx->linebuf.line + 3, &reason, 16);


    if (apr_isspace(*reason)) {
        reason++;
    }

    ctx->length = apr_strtoi64(reason, &reason, 16);


    if (reason - ctx->linebuf.line < ctx->linebuf.used) {
        if (apr_isspace(*reason)) {
            reason++;
        }

        ctx->phrase = serf_bstrmemdup(allocator, reason,
                                      ctx->linebuf.used
                                      - (reason - ctx->linebuf.line));
    } else {
        ctx->phrase = ((void*)0);
    }

    return APR_SUCCESS;
}
