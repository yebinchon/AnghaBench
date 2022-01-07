
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char const* path; int * rev_props; scalar_t__ revision; int lock_state; int prop_state; int content_state; int kind; } ;
typedef TYPE_3__ svn_wc_notify_t ;
typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct rev {int dummy; } ;
struct file_rev_baton {int * currpool; TYPE_2__* last_rev; int * mainpool; scalar_t__ include_merged_revisions; int * last_filename; int start_rev; int end_rev; void* last_props; scalar_t__ last_revnum; scalar_t__ backwards; int * filepool; TYPE_1__* ctx; int repos_root_url; int target; scalar_t__ check_mime_type; } ;
struct delta_baton {int wrapped_baton; int wrapped_handler; TYPE_2__* rev; scalar_t__ is_merged_revision; struct file_rev_baton* file_rev_baton; int filename; int * source_stream; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_7__ {int path; scalar_t__ revision; void* rev_props; } ;
struct TYPE_6__ {int cancel_baton; int (* cancel_func ) (int ) ;int notify_baton2; int (* notify_func2 ) (int ,TYPE_3__*,int *) ;} ;


 scalar_t__ FALSE ;
 scalar_t__ MAX (int ,int ) ;
 scalar_t__ MIN (int ,int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_CLIENT_IS_BINARY_FILE ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MIME_TYPE ;
 int _ (char*) ;
 void* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int stub1 (int ,TYPE_3__*,int *) ;
 int stub2 (int ) ;
 int svn_dirent_local_style (int ,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_file_del_on_pool_cleanup ;
 scalar_t__ svn_mime_type_is_binary (char const*) ;
 int svn_node_none ;
 scalar_t__ svn_path_is_url (int ) ;
 int svn_path_url_add_component2 (int ,char const*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_prop_array_to_hash (int *,int *) ;
 char* svn_prop_get_value (int *,int ) ;
 void* svn_prop_hash_dup (int *,int *) ;
 int svn_stream_copy3 (int *,int *,int *,int *,int *) ;
 int * svn_stream_disown (int *,int *) ;
 int svn_stream_open_readonly (int **,int *,int *,int *) ;
 int svn_stream_open_unique (int **,int *,int *,int ,int *,int *) ;
 int svn_txdelta_apply (int *,int *,int *,int *,int *,int *,int *) ;
 TYPE_3__* svn_wc_create_notify_url (int ,int ,int *) ;
 int svn_wc_notify_blame_revision ;
 int svn_wc_notify_lock_state_inapplicable ;
 int svn_wc_notify_state_inapplicable ;
 int update_blame (struct delta_baton*) ;
 int window_handler ;

__attribute__((used)) static svn_error_t *
file_rev_handler(void *baton, const char *path, svn_revnum_t revnum,
                 apr_hash_t *rev_props,
                 svn_boolean_t merged_revision,
                 svn_txdelta_window_handler_t *content_delta_handler,
                 void **content_delta_baton,
                 apr_array_header_t *prop_diffs,
                 apr_pool_t *pool)
{
  struct file_rev_baton *frb = baton;
  svn_stream_t *last_stream;
  svn_stream_t *cur_stream;
  struct delta_baton *delta_baton;
  apr_pool_t *filepool;


  svn_pool_clear(frb->currpool);

  if (frb->check_mime_type)
    {
      apr_hash_t *props = svn_prop_array_to_hash(prop_diffs, frb->currpool);
      const char *value;

      frb->check_mime_type = FALSE;

      value = svn_prop_get_value(props, SVN_PROP_MIME_TYPE);

      if (value && svn_mime_type_is_binary(value))
        {
          return svn_error_createf(
              SVN_ERR_CLIENT_IS_BINARY_FILE, ((void*)0),
              _("Cannot calculate blame information for binary file '%s'"),
               (svn_path_is_url(frb->target)
                      ? frb->target
                      : svn_dirent_local_style(frb->target, pool)));
        }
    }

  if (frb->ctx->notify_func2)
    {
      svn_wc_notify_t *notify
            = svn_wc_create_notify_url(
                            svn_path_url_add_component2(frb->repos_root_url,
                                                        path+1, pool),
                            svn_wc_notify_blame_revision, pool);
      notify->path = path;
      notify->kind = svn_node_none;
      notify->content_state = notify->prop_state
        = svn_wc_notify_state_inapplicable;
      notify->lock_state = svn_wc_notify_lock_state_inapplicable;
      notify->revision = revnum;
      notify->rev_props = rev_props;
      frb->ctx->notify_func2(frb->ctx->notify_baton2, notify, pool);
    }

  if (frb->ctx->cancel_func)
    SVN_ERR(frb->ctx->cancel_func(frb->ctx->cancel_baton));







  if (!content_delta_handler
      && (!frb->include_merged_revisions || merged_revision))
    return SVN_NO_ERROR;


  delta_baton = apr_pcalloc(frb->currpool, sizeof(*delta_baton));


  if (frb->last_filename)
    SVN_ERR(svn_stream_open_readonly(&delta_baton->source_stream, frb->last_filename,
                                     frb->currpool, pool));
  else

    delta_baton->source_stream = ((void*)0);
  last_stream = svn_stream_disown(delta_baton->source_stream, pool);

  if (frb->include_merged_revisions && !merged_revision)
    filepool = frb->filepool;
  else
    filepool = frb->currpool;

  SVN_ERR(svn_stream_open_unique(&cur_stream, &delta_baton->filename, ((void*)0),
                                 svn_io_file_del_on_pool_cleanup,
                                 filepool, filepool));


  delta_baton->file_rev_baton = frb;
  delta_baton->is_merged_revision = merged_revision;


  delta_baton->rev = apr_pcalloc(frb->mainpool, sizeof(struct rev));

  if (frb->backwards)
    {



      delta_baton->rev->revision = frb->last_revnum;
      delta_baton->rev->rev_props = frb->last_props;


      if (revnum >= MIN(frb->start_rev, frb->end_rev))
        {
          frb->last_revnum = revnum;
          frb->last_props = svn_prop_hash_dup(rev_props, frb->mainpool);
        }

    }
  else if (merged_revision
           || (revnum >= MIN(frb->start_rev, frb->end_rev)))
    {

      SVN_ERR_ASSERT(revnum <= 1 + MAX(frb->end_rev, frb->start_rev));


      delta_baton->rev->revision = revnum;
      delta_baton->rev->rev_props = svn_prop_hash_dup(rev_props, frb->mainpool);
    }
  else
    {


      SVN_ERR_ASSERT((frb->last_filename == ((void*)0))
                     || frb->include_merged_revisions);






      delta_baton->rev->revision = SVN_INVALID_REVNUM;
    }

  if (frb->include_merged_revisions)
    delta_baton->rev->path = apr_pstrdup(frb->mainpool, path);


  frb->last_rev = delta_baton->rev;



  if (content_delta_handler)
    {


      svn_txdelta_apply(last_stream, cur_stream, ((void*)0), ((void*)0),
                        frb->currpool,
                        &delta_baton->wrapped_handler,
                        &delta_baton->wrapped_baton);
      *content_delta_handler = window_handler;
      *content_delta_baton = delta_baton;
    }
  else
    {



      SVN_ERR(svn_stream_copy3(last_stream, cur_stream, ((void*)0), ((void*)0), pool));
      SVN_ERR(update_blame(delta_baton));
    }

  return SVN_NO_ERROR;
}
