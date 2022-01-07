
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
struct TYPE_21__ {TYPE_5__* priv; } ;
typedef TYPE_4__ svn_ra_session_t ;
struct TYPE_18__ {int path; } ;
struct TYPE_22__ {TYPE_2__* wc_callbacks; TYPE_1__ session_url; } ;
typedef TYPE_5__ svn_ra_serf__session_t ;
struct TYPE_20__ {int code; } ;
struct TYPE_23__ {char* method; char const* path; TYPE_3__ sline; TYPE_7__* response_error_baton; int response_error; TYPE_7__* response_baton; int response_handler; TYPE_7__* header_delegate_baton; int header_delegate; void* no_dav_headers; void* custom_accept_encoding; } ;
typedef TYPE_6__ svn_ra_serf__handler_t ;
typedef int svn_ra_serf__dav_props_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct file_prop_baton_t {scalar_t__ kind; int * sha1_checksum; int * props; int * result_pool; } ;
struct TYPE_24__ {TYPE_6__* handler; TYPE_5__* session; int * result_stream; } ;
typedef TYPE_7__ stream_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_19__ {scalar_t__ get_wc_contents; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_NOT_FILE ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int _ (char*) ;
 int * all_props ;
 int * apr_hash_make (int *) ;
 TYPE_7__* apr_pcalloc (int *,int) ;
 int cancel_fetch ;
 int * check_path_props ;
 int get_file_prop_cb ;
 int handle_stream ;
 int headers_fetch ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_unknown ;
 char* svn_path_url_add_component2 (int ,char const*,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_serf__context_run_one (TYPE_6__*,int *) ;
 TYPE_6__* svn_ra_serf__create_handler (TYPE_5__*,int *) ;
 int svn_ra_serf__create_propfind_handler (TYPE_6__**,TYPE_5__*,char const*,int ,char*,int const*,int ,struct file_prop_baton_t*,int *) ;
 int svn_ra_serf__get_stable_url (char const**,int *,TYPE_5__*,char const*,int ,int *,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_6__*) ;
 int try_get_wc_contents (int *,TYPE_5__*,int *,int *,int *) ;
 int * type_and_checksum_props ;

svn_error_t *
svn_ra_serf__get_file(svn_ra_session_t *ra_session,
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
  apr_pool_t *scratch_pool = svn_pool_create(result_pool);
  struct file_prop_baton_t fb;



  fetch_url = svn_path_url_add_component2(session->session_url.path, path,
                                          scratch_pool);






  if (SVN_IS_VALID_REVNUM(revision) || fetched_rev)
    {
      SVN_ERR(svn_ra_serf__get_stable_url(&fetch_url, fetched_rev,
                                          session,
                                          fetch_url, revision,
                                          scratch_pool, scratch_pool));
      revision = SVN_INVALID_REVNUM;
    }

  SVN_ERR_ASSERT(!SVN_IS_VALID_REVNUM(revision));

  if (props)
      which_props = all_props;
  else if (stream && session->wc_callbacks->get_wc_contents)
      which_props = type_and_checksum_props;
  else
      which_props = check_path_props;

  fb.result_pool = result_pool;
  fb.props = props ? apr_hash_make(result_pool) : ((void*)0);
  fb.kind = svn_node_unknown;
  fb.sha1_checksum = ((void*)0);

  SVN_ERR(svn_ra_serf__create_propfind_handler(&propfind_handler, session,
                                               fetch_url, SVN_INVALID_REVNUM,
                                               "0", which_props,
                                               get_file_prop_cb, &fb,
                                               scratch_pool));

  SVN_ERR(svn_ra_serf__context_run_one(propfind_handler, scratch_pool));


  if (fb.kind != svn_node_file)
    {
      return svn_error_create(SVN_ERR_FS_NOT_FILE, ((void*)0),
                              _("Can't get text contents of a directory"));
    }

  if (props)
    *props = fb.props;

  if (stream)
    {
      svn_boolean_t found;
      SVN_ERR(try_get_wc_contents(&found, session, fb.sha1_checksum, stream,
                                  scratch_pool));


      if (!found)
        {
          stream_ctx_t *stream_ctx;
          svn_ra_serf__handler_t *handler;


          stream_ctx = apr_pcalloc(scratch_pool, sizeof(*stream_ctx));
          stream_ctx->result_stream = stream;
          stream_ctx->session = session;

          handler = svn_ra_serf__create_handler(session, scratch_pool);

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

          SVN_ERR(svn_ra_serf__context_run_one(handler, scratch_pool));

          if (handler->sline.code != 200)
            return svn_error_trace(svn_ra_serf__unexpected_status(handler));
        }
    }

  svn_pool_destroy(scratch_pool);

  return SVN_NO_ERROR;
}
