#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char* path; } ;
struct TYPE_12__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  activity_collection_url; TYPE_4__ session_url; } ;
typedef  TYPE_2__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {scalar_t__ activity_collection; TYPE_5__* handler; } ;
typedef  TYPE_3__ options_context_t ;
typedef  TYPE_4__ apr_uri_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_11__ {int code; } ;
struct TYPE_15__ {TYPE_1__ sline; int /*<<< orphan*/ * location; int /*<<< orphan*/  no_fail_on_http_redirect_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_RESPONSE_HEADER_BADNESS ; 
 int /*<<< orphan*/  SVN_ERR_RA_SESSION_URL_MISMATCH ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(svn_ra_serf__session_t *serf_sess,
                                   const char **corrected_url,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  options_context_t *opt_ctx;

  if (corrected_url)
    *corrected_url = NULL;

  /* This routine automatically fills in serf_sess->capabilities */
  FUNC0(FUNC4(&opt_ctx, serf_sess, scratch_pool));

  opt_ctx->handler->no_fail_on_http_redirect_status = TRUE;

  FUNC0(FUNC9(opt_ctx->handler, scratch_pool));

  /* If our caller cares about server redirections, and our response
     carries such a thing, report as much.  We'll disregard ERR --
     it's most likely just a complaint about the response body not
     successfully parsing as XML or somesuch. */
  if (corrected_url && (opt_ctx->handler->sline.code == 301))
    {
      if (!opt_ctx->handler->location || !*opt_ctx->handler->location)
        {
          return FUNC5(
                    SVN_ERR_RA_DAV_RESPONSE_HEADER_BADNESS, NULL,
                    FUNC1("Location header not set on redirect response"));
        }
      else if (FUNC8(opt_ctx->handler->location))
        {
          *corrected_url = FUNC11(opt_ctx->handler->location,
                                                result_pool);
        }
      else
        {
          /* RFC1945 and RFC2616 state that the Location header's value
             (from whence this CORRECTED_URL comes), if present, must be an
             absolute URI.  But some Apache versions (those older than 2.2.11,
             it seems) transmit only the path portion of the URI.
             See issue #3775 for details. */

          apr_uri_t corrected_URI = serf_sess->session_url;

          corrected_URI.path = (char *)corrected_url;
          *corrected_url = FUNC11(
                              FUNC3(scratch_pool, &corrected_URI, 0),
                              result_pool);
        }

      return SVN_NO_ERROR;
    }
  else if (opt_ctx->handler->sline.code >= 300
           && opt_ctx->handler->sline.code < 399)
    {
      return FUNC6(SVN_ERR_RA_SESSION_URL_MISMATCH, NULL,
                               (opt_ctx->handler->sline.code == 301
                                ? FUNC1("Repository moved permanently to '%s'")
                                : FUNC1("Repository moved temporarily to '%s'")),
                              opt_ctx->handler->location);
    }

  if (opt_ctx->handler->sline.code != 200)
    return FUNC7(FUNC10(opt_ctx->handler));

  /* Opportunistically cache any reported activity URL.  (We don't
     want to have to ask for this again later, potentially against an
     unreadable commit anchor URL.)  */
  if (opt_ctx->activity_collection)
    {
      serf_sess->activity_collection_url =
        FUNC2(serf_sess->pool, opt_ctx->activity_collection);
    }

  return SVN_NO_ERROR;
}