#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* data; } ;
typedef  TYPE_1__ serf_bucket_t ;
struct TYPE_7__ {int used; char* line; int /*<<< orphan*/  state; } ;
struct TYPE_6__ {int state; int body_left; int /*<<< orphan*/  stream; TYPE_3__ linebuf; } ;
typedef  TYPE_2__ dechunk_context_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EGENERAL ; 
 int /*<<< orphan*/  APR_EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERF_ERROR_TRUNCATED_HTTP_RESPONSE ; 
 int /*<<< orphan*/  SERF_LINEBUF_READY ; 
 int /*<<< orphan*/  SERF_NEWLINE_CRLF ; 
#define  STATE_CHUNK 131 
#define  STATE_DONE 130 
#define  STATE_SIZE 129 
#define  STATE_TERM 128 
 int FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char const**,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static apr_status_t FUNC6(serf_bucket_t *bucket,
                                      apr_size_t requested,
                                      const char **data, apr_size_t *len)
{
    dechunk_context_t *ctx = bucket->data;
    apr_status_t status;

    while (1) {
        switch (ctx->state) {
        case STATE_SIZE:

            /* fetch a line terminated by CRLF */
            status = FUNC5(&ctx->linebuf, ctx->stream,
                                        SERF_NEWLINE_CRLF);
            if (FUNC2(status))
                return status;

            /* if a line was read, then parse it. */
            if (ctx->linebuf.state == SERF_LINEBUF_READY) {
                /* NUL-terminate the line. if it filled the entire buffer,
                   then just assume the thing is too large. */
                if (ctx->linebuf.used == sizeof(ctx->linebuf.line))
                    return FUNC0(ERANGE);
                ctx->linebuf.line[ctx->linebuf.used] = '\0';

                /* convert from HEX digits. */
                ctx->body_left = FUNC3(ctx->linebuf.line, NULL, 16);
                if (errno == ERANGE) {
                    return FUNC0(ERANGE);
                }

                if (ctx->body_left == 0) {
                    /* Just read the last-chunk marker. We're DONE. */
                    ctx->state = STATE_DONE;
                    status = APR_EOF;
                }
                else {
                    /* Got a size, so we'll start reading the chunk now. */
                    ctx->state = STATE_CHUNK;
                }

                /* If we can read more, then go do so. */
                if (!status)
                    continue;
            }
            /* assert: status != 0 */

            /* Note that we didn't actually read anything, so our callers
             * don't get confused.
             */
            *len = 0;

            return status;

        case STATE_CHUNK:

            if (requested > ctx->body_left) {
                requested = ctx->body_left;
            }

            /* Delegate to the stream bucket to do the read. */
            status = FUNC4(ctx->stream, requested, data, len);
            if (FUNC2(status))
                return status;

            /* Some data was read, so decrement the amount left and see
             * if we're done reading this chunk.
             */
            ctx->body_left -= *len;
            if (!ctx->body_left) {
                ctx->state = STATE_TERM;
                ctx->body_left = 2;     /* CRLF */
            }

            /* We need more data but there is no more available. */
            if (ctx->body_left && FUNC1(status)) {
                return SERF_ERROR_TRUNCATED_HTTP_RESPONSE;
            }

            /* Return the data we just read. */
            return status;

        case STATE_TERM:
            /* Delegate to the stream bucket to do the read. */
            status = FUNC4(ctx->stream, ctx->body_left, data, len);
            if (FUNC2(status))
                return status;

            /* Some data was read, so decrement the amount left and see
             * if we're done reading the chunk terminator.
             */
            ctx->body_left -= *len;

            /* We need more data but there is no more available. */
            if (ctx->body_left && FUNC1(status))
                return SERF_ERROR_TRUNCATED_HTTP_RESPONSE;

            if (!ctx->body_left) {
                ctx->state = STATE_SIZE;
            }

            /* Don't return the CR of CRLF to the caller! */
            *len = 0;

            if (status)
                return status;

            break;

        case STATE_DONE:
            /* Just keep returning EOF */
            *len = 0;
            return APR_EOF;

        default:
            /* Not reachable */
            return APR_EGENERAL;
        }
    }
    /* NOTREACHED */
}