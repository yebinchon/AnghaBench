#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_21__ {TYPE_5__* priv; } ;
typedef  TYPE_4__ svn_ra_session_t ;
struct TYPE_18__ {int /*<<< orphan*/  path; } ;
struct TYPE_22__ {TYPE_2__* wc_callbacks; TYPE_1__ session_url; } ;
typedef  TYPE_5__ svn_ra_serf__session_t ;
struct TYPE_20__ {int code; } ;
struct TYPE_23__ {char* method; char const* path; TYPE_3__ sline; TYPE_7__* response_error_baton; int /*<<< orphan*/  response_error; TYPE_7__* response_baton; int /*<<< orphan*/  response_handler; TYPE_7__* header_delegate_baton; int /*<<< orphan*/  header_delegate; void* no_dav_headers; void* custom_accept_encoding; } ;
typedef  TYPE_6__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__dav_props_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct file_prop_baton_t {scalar_t__ kind; int /*<<< orphan*/ * sha1_checksum; int /*<<< orphan*/ * props; int /*<<< orphan*/ * result_pool; } ;
struct TYPE_24__ {TYPE_6__* handler; TYPE_5__* session; int /*<<< orphan*/ * result_stream; } ;
typedef  TYPE_7__ stream_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_19__ {scalar_t__ get_wc_contents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FILE ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * all_props ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cancel_fetch ; 
 int /*<<< orphan*/ * check_path_props ; 
 int /*<<< orphan*/  get_file_prop_cb ; 
 int /*<<< orphan*/  handle_stream ; 
 int /*<<< orphan*/  headers_fetch ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_unknown ; 
 char* FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC12 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__**,TYPE_5__*,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct file_prop_baton_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const**,int /*<<< orphan*/ *,TYPE_5__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * type_and_checksum_props ; 

svn_error_t *
FUNC17(svn_ra_session_t *ra_session,
                      const char *path,
                      svn_revnum_t revision,
                      svn_stream_t *stream,
                      svn_revnum_t *fetched_rev,
                      apr_hash_t **props,
                      apr_pool_t *result_pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  const char *fetch_url;
  const svn_ra_serf__dav_props_t *which_props;
  svn_ra_serf__handler_t *propfind_handler;
  apr_pool_t *scratch_pool = FUNC9(result_pool);
  struct file_prop_baton_t fb;

  /* Fetch properties. */

  fetch_url = FUNC8(session->session_url.path, path,
                                          scratch_pool);

  /* The simple case is if we want HEAD - then a GET on the fetch_url is fine.
   *
   * Otherwise, we need to get the baseline version for this particular
   * revision and then fetch that file.
   */
  if (FUNC2(revision) || fetched_rev)
    {
      FUNC0(FUNC14(&fetch_url, fetched_rev,
                                          session,
                                          fetch_url, revision,
                                          scratch_pool, scratch_pool));
      revision = SVN_INVALID_REVNUM;
    }
  /* REVISION is always SVN_INVALID_REVNUM  */
  FUNC1(!FUNC2(revision));

  if (props)
      which_props = all_props;
  else if (stream && session->wc_callbacks->get_wc_contents)
      which_props = type_and_checksum_props;
  else
      which_props = check_path_props;

  fb.result_pool = result_pool;
  fb.props = props ? FUNC4(result_pool) : NULL;
  fb.kind = svn_node_unknown;
  fb.sha1_checksum = NULL;

  FUNC0(FUNC13(&propfind_handler, session,
                                               fetch_url, SVN_INVALID_REVNUM,
                                               "0", which_props,
                                               get_file_prop_cb, &fb,
                                               scratch_pool));

  FUNC0(FUNC11(propfind_handler, scratch_pool));

  /* Verify that resource type is not collection. */
  if (fb.kind != svn_node_file)
    {
      return FUNC6(SVN_ERR_FS_NOT_FILE, NULL,
                              FUNC3("Can't get text contents of a directory"));
    }

  if (props)
    *props = fb.props;

  if (stream)
    {
      svn_boolean_t found;
      FUNC0(FUNC16(&found, session, fb.sha1_checksum, stream,
                                  scratch_pool));

      /* No contents found in the WC, let's fetch from server. */
      if (!found)
        {
          stream_ctx_t *stream_ctx;
          svn_ra_serf__handler_t *handler;

          /* Create the fetch context. */
          stream_ctx = FUNC5(scratch_pool, sizeof(*stream_ctx));
          stream_ctx->result_stream = stream;
          stream_ctx->session = session;

          handler = FUNC12(session, scratch_pool);

          handler->method = "GET";
          handler->path = fetch_url;

          handler->custom_accept_encoding = TRUE;
          handler->no_dav_headers = TRUE;

          handler->header_delegate = headers_fetch;
          handler->header_delegate_baton = stream_ctx;

          handler->response_handler = handle_stream;
          handler->response_baton = stream_ctx;

          handler->response_error = cancel_fetch;
          handler->response_error_baton = stream_ctx;

          stream_ctx->handler = handler;

          FUNC0(FUNC11(handler, scratch_pool));

          if (handler->sline.code != 200)
            return FUNC7(FUNC15(handler));
        }
    }

  FUNC10(scratch_pool);

  return SVN_NO_ERROR;
}