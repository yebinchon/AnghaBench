#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  allocator; } ;
typedef  TYPE_3__ serf_bucket_t ;
struct TYPE_13__ {int /*<<< orphan*/  used; int /*<<< orphan*/  state; } ;
struct TYPE_12__ {int code; } ;
struct TYPE_15__ {int state; int chunked; TYPE_2__ linebuf; void* body; int /*<<< orphan*/  headers; int /*<<< orphan*/  stream; TYPE_1__ sl; } ;
typedef  TYPE_4__ response_context_t ;
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EGENERAL ; 
 int /*<<< orphan*/  APR_EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERF_DEFLATE_DEFLATE ; 
 int /*<<< orphan*/  SERF_DEFLATE_GZIP ; 
 int /*<<< orphan*/  SERF_ERROR_REQUEST_LOST ; 
 int /*<<< orphan*/  SERF_LINEBUF_READY ; 
 int /*<<< orphan*/  SERF_NEWLINE_ANY ; 
#define  STATE_BODY 132 
#define  STATE_DONE 131 
#define  STATE_HEADERS 130 
#define  STATE_STATUS_LINE 129 
#define  STATE_TRAILERS 128 
 int /*<<< orphan*/  FUNC3 (void const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC12 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,void const*) ; 

__attribute__((used)) static apr_status_t FUNC15(serf_bucket_t *bkt, response_context_t *ctx)
{
    apr_status_t status = APR_SUCCESS; /* initialize to avoid gcc warnings */

    switch (ctx->state) {
    case STATE_STATUS_LINE:
        /* RFC 2616 says that CRLF is the only line ending, but we can easily
         * accept any kind of line ending.
         */
        status = FUNC6(ctx, SERF_NEWLINE_ANY);
        if (FUNC2(status))
            return status;

        if (ctx->linebuf.state == SERF_LINEBUF_READY) {
            /* The Status-Line is in the line buffer. Process it. */
            status = FUNC7(ctx, bkt->allocator);
            if (status)
                return status;

            /* Good times ahead: we're switching protocols! */
            if (ctx->sl.code == 101) {
                ctx->body =
                    FUNC8(ctx->stream, bkt->allocator);
                ctx->state = STATE_DONE;
                break;
            }

            /* Okay... move on to reading the headers. */
            ctx->state = STATE_HEADERS;
        }
        else {
            /* The connection closed before we could get the next
             * response.  Treat the request as lost so that our upper
             * end knows the server never tried to give us a response.
             */
            if (FUNC1(status)) {
                return SERF_ERROR_REQUEST_LOST;
            }
        }
        break;
    case STATE_HEADERS:
        status = FUNC5(bkt, ctx);
        if (FUNC2(status))
            return status;

        /* If an empty line was read, then we hit the end of the headers.
         * Move on to the body.
         */
        if (ctx->linebuf.state == SERF_LINEBUF_READY && !ctx->linebuf.used) {
            const void *v;

            /* Advance the state. */
            ctx->state = STATE_BODY;

            /* If this is a response to a HEAD request, or code == 1xx,204 or304
               then we don't receive a real body. */
            if (!FUNC4(ctx)) {
                ctx->body = FUNC13(NULL, 0, NULL, NULL,
                                                      bkt->allocator);
                ctx->state = STATE_BODY;
                break;
            }

            ctx->body =
                FUNC8(ctx->stream, bkt->allocator);

            /* Are we C-L, chunked, or conn close? */
            v = FUNC11(ctx->headers, "Content-Length");
            if (v) {
                apr_uint64_t length;
                length = FUNC3(v, NULL, 10);
                if (errno == ERANGE) {
                    return FUNC0(ERANGE);
                }
                ctx->body = FUNC12(
                              ctx->body, length, bkt->allocator);
            }
            else {
                v = FUNC11(ctx->headers, "Transfer-Encoding");

                /* Need to handle multiple transfer-encoding. */
                if (v && FUNC14("chunked", v) == 0) {
                    ctx->chunked = 1;
                    ctx->body = FUNC9(ctx->body,
                                                           bkt->allocator);
                }
            }
            v = FUNC11(ctx->headers, "Content-Encoding");
            if (v) {
                /* Need to handle multiple content-encoding. */
                if (v && FUNC14("gzip", v) == 0) {
                    ctx->body =
                        FUNC10(ctx->body, bkt->allocator,
                                                   SERF_DEFLATE_GZIP);
                }
                else if (v && FUNC14("deflate", v) == 0) {
                    ctx->body =
                        FUNC10(ctx->body, bkt->allocator,
                                                   SERF_DEFLATE_DEFLATE);
                }
            }
        }
        break;
    case STATE_BODY:
        /* Don't do anything. */
        break;
    case STATE_TRAILERS:
        status = FUNC5(bkt, ctx);
        if (FUNC2(status))
            return status;

        /* If an empty line was read, then we're done. */
        if (ctx->linebuf.state == SERF_LINEBUF_READY && !ctx->linebuf.used) {
            ctx->state = STATE_DONE;
            return APR_EOF;
        }
        break;
    case STATE_DONE:
        return APR_EOF;
    default:
        /* Not reachable */
        return APR_EGENERAL;
    }

    return status;
}