
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef void* svn_revnum_t ;
struct TYPE_24__ {int code; } ;
struct TYPE_25__ {char* method; TYPE_2__ sline; struct TYPE_25__* response_baton; int response_handler; void* path; TYPE_8__* commit_ctx; struct TYPE_25__* handler; int * header_delegate_baton; int header_delegate; int * body_delegate_baton; int body_delegate; int body_type; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
struct TYPE_26__ {int name; int value; } ;
typedef TYPE_4__ svn_prop_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_27__ {char const* path; void* prop_changes; int base_revision; int * pool; int * commit_ctx; } ;
typedef TYPE_5__ proppatch_context_t ;
typedef TYPE_3__ post_response_ctx_t ;
struct TYPE_28__ {char* relpath; char* name; char const* url; int * pool; void* base_revision; TYPE_8__* commit_ctx; void* prop_changes; } ;
typedef TYPE_7__ dir_context_t ;
struct TYPE_29__ {char const* txn_root_url; char* txn_url; char* baseline_url; TYPE_9__* session; int * revprop_table; int * pool; void* checked_in_url; int vcc_url; void* activity_url; int open_batons; } ;
typedef TYPE_8__ commit_context_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
struct TYPE_23__ {int path; } ;
struct TYPE_30__ {char* activity_collection_url; TYPE_1__ session_url; void* me_resource; int supported_posts; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_DAV_REQUEST_FAILED ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (TYPE_9__*) ;
 int SVN_SKEL_MIME_TYPE ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 void* apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_key (int *) ;
 int apr_hash_this_val (int *) ;
 TYPE_4__* apr_palloc (int *,int) ;
 void* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,char const*) ;
 int checkout_dir (TYPE_7__*,int *) ;
 int create_txn_post_body ;
 int get_version_url (char const**,TYPE_9__*,char*,void*,void*,int *,int *) ;
 int post_response_handler ;
 int proppatch_resource (TYPE_9__*,TYPE_5__*,int *) ;
 int setup_post_headers ;
 int * svn_error_createf (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int * svn_hash_gets (int ,char*) ;
 int svn_hash_sets (void*,int ,TYPE_4__*) ;
 void* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_serf__context_run_one (TYPE_3__*,int *) ;
 TYPE_3__* svn_ra_serf__create_handler (TYPE_9__*,int *) ;
 int svn_ra_serf__discover_vcc (int *,TYPE_9__*,int *) ;
 int svn_ra_serf__expect_empty_body ;
 int svn_ra_serf__get_relative_path (char const**,int ,TYPE_9__*,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_3__*) ;
 int svn_ra_serf__v1_get_activity_collection (char const**,TYPE_9__*,int *,int *) ;
 char const* svn_uuid_generate (int *) ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *dir_pool,
          void **root_baton)
{
  commit_context_t *commit_ctx = edit_baton;
  svn_ra_serf__handler_t *handler;
  proppatch_context_t *proppatch_ctx;
  dir_context_t *dir;
  apr_hash_index_t *hi;
  const char *proppatch_target = ((void*)0);
  apr_pool_t *scratch_pool = svn_pool_create(dir_pool);

  commit_ctx->open_batons++;

  if (SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(commit_ctx->session))
    {
      post_response_ctx_t *prc;
      const char *rel_path;
      svn_boolean_t post_with_revprops
        = (((void*)0) != svn_hash_gets(commit_ctx->session->supported_posts,
                                 "create-txn-with-props"));


      handler = svn_ra_serf__create_handler(commit_ctx->session, scratch_pool);

      handler->method = "POST";
      handler->body_type = SVN_SKEL_MIME_TYPE;
      handler->body_delegate = create_txn_post_body;
      handler->body_delegate_baton =
          post_with_revprops ? commit_ctx->revprop_table : ((void*)0);
      handler->header_delegate = setup_post_headers;
      handler->header_delegate_baton = ((void*)0);
      handler->path = commit_ctx->session->me_resource;

      prc = apr_pcalloc(scratch_pool, sizeof(*prc));
      prc->handler = handler;
      prc->commit_ctx = commit_ctx;

      handler->response_handler = post_response_handler;
      handler->response_baton = prc;

      SVN_ERR(svn_ra_serf__context_run_one(handler, scratch_pool));

      if (handler->sline.code != 201)
        return svn_error_trace(svn_ra_serf__unexpected_status(handler));

      if (! (commit_ctx->txn_root_url && commit_ctx->txn_url))
        {
          return svn_error_createf(
            SVN_ERR_RA_DAV_REQUEST_FAILED, ((void*)0),
            _("POST request did not return transaction information"));
        }


      SVN_ERR(svn_ra_serf__get_relative_path(
                                        &rel_path,
                                        commit_ctx->session->session_url.path,
                                        commit_ctx->session,
                                        scratch_pool));
      commit_ctx->txn_root_url = svn_path_url_add_component2(
                                        commit_ctx->txn_root_url,
                                        rel_path, commit_ctx->pool);


      dir = apr_pcalloc(dir_pool, sizeof(*dir));
      dir->pool = dir_pool;
      dir->commit_ctx = commit_ctx;
      dir->base_revision = base_revision;
      dir->relpath = "";
      dir->name = "";
      dir->prop_changes = apr_hash_make(dir->pool);
      dir->url = apr_pstrdup(dir->pool, commit_ctx->txn_root_url);



      proppatch_target = post_with_revprops ? ((void*)0) : commit_ctx->txn_url;
    }
  else
    {
      const char *activity_str = commit_ctx->session->activity_collection_url;

      if (!activity_str)
        SVN_ERR(svn_ra_serf__v1_get_activity_collection(
                                    &activity_str,
                                    commit_ctx->session,
                                    scratch_pool, scratch_pool));

      commit_ctx->activity_url = svn_path_url_add_component2(
                                    activity_str,
                                    svn_uuid_generate(scratch_pool),
                                    commit_ctx->pool);


      handler = svn_ra_serf__create_handler(commit_ctx->session, scratch_pool);

      handler->method = "MKACTIVITY";
      handler->path = commit_ctx->activity_url;

      handler->response_handler = svn_ra_serf__expect_empty_body;
      handler->response_baton = handler;

      SVN_ERR(svn_ra_serf__context_run_one(handler, scratch_pool));

      if (handler->sline.code != 201)
        return svn_error_trace(svn_ra_serf__unexpected_status(handler));


      SVN_ERR(svn_ra_serf__discover_vcc(&(commit_ctx->vcc_url),
                                        commit_ctx->session, scratch_pool));



      dir = apr_pcalloc(dir_pool, sizeof(*dir));
      dir->pool = dir_pool;
      dir->commit_ctx = commit_ctx;
      dir->base_revision = base_revision;
      dir->relpath = "";
      dir->name = "";
      dir->prop_changes = apr_hash_make(dir->pool);

      SVN_ERR(get_version_url(&dir->url, dir->commit_ctx->session,
                              dir->relpath,
                              dir->base_revision, commit_ctx->checked_in_url,
                              dir->pool, scratch_pool));
      commit_ctx->checked_in_url = apr_pstrdup(commit_ctx->pool, dir->url);


      SVN_ERR(checkout_dir(dir, scratch_pool));

      proppatch_target = commit_ctx->baseline_url;
    }




  if (proppatch_target)
    {
      proppatch_ctx = apr_pcalloc(scratch_pool, sizeof(*proppatch_ctx));
      proppatch_ctx->pool = scratch_pool;
      proppatch_ctx->commit_ctx = ((void*)0);
      proppatch_ctx->path = proppatch_target;
      proppatch_ctx->prop_changes = apr_hash_make(proppatch_ctx->pool);
      proppatch_ctx->base_revision = SVN_INVALID_REVNUM;

      for (hi = apr_hash_first(scratch_pool, commit_ctx->revprop_table);
           hi;
           hi = apr_hash_next(hi))
        {
          svn_prop_t *prop = apr_palloc(scratch_pool, sizeof(*prop));

          prop->name = apr_hash_this_key(hi);
          prop->value = apr_hash_this_val(hi);

          svn_hash_sets(proppatch_ctx->prop_changes, prop->name, prop);
        }

      SVN_ERR(proppatch_resource(commit_ctx->session,
                                 proppatch_ctx, scratch_pool));
    }

  svn_pool_destroy(scratch_pool);

  *root_baton = dir;

  return SVN_NO_ERROR;
}
