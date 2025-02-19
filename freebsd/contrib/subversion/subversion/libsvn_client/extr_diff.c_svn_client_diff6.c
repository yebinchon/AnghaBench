
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int svn_stream_t ;
struct TYPE_18__ {int kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef int svn_error_t ;
struct TYPE_19__ {int file_deleted; int file_changed; int file_added; int dir_deleted; int dir_changed; int dir_added; } ;
typedef TYPE_2__ svn_diff_tree_processor_t ;
typedef int svn_depth_t ;
struct TYPE_20__ {int wc_ctx; int cancel_baton; int cancel_func; int config; } ;
typedef TYPE_3__ svn_client_ctx_t ;
typedef void* svn_boolean_t ;
struct TYPE_17__ {char const* orig_path_1; char const* orig_path_2; int * anchor; int * session_relpath; } ;
struct TYPE_21__ {char const* header_encoding; char const* relative_to_dir; TYPE_10__ ddi; int wc_ctx; int cancel_baton; int cancel_func; void* show_copies_as_adds; void* no_diff_deleted; void* no_diff_added; void* use_git_diff_format; void* properties_only; void* ignore_properties; void* force_binary; int * errstream; int * outstream; int * pool; int member_0; } ;
typedef TYPE_4__ diff_writer_info_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int TRUE ;
 int _ (char*) ;
 int create_diff_writer_info (TYPE_4__*,int const*,int ,int *) ;
 int diff_dir_added ;
 int diff_dir_changed ;
 int diff_dir_deleted ;
 int diff_file_added ;
 int diff_file_changed ;
 int diff_file_deleted ;
 int do_diff (int *,int *,TYPE_10__*,char const*,char const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,int ,int ,void*,int const*,int ,TYPE_2__ const*,TYPE_3__*,int *,int *) ;
 TYPE_2__* svn_diff__tree_processor_create (TYPE_4__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_opt_revision_unspecified ;

svn_error_t *
svn_client_diff6(const apr_array_header_t *options,
                 const char *path_or_url1,
                 const svn_opt_revision_t *revision1,
                 const char *path_or_url2,
                 const svn_opt_revision_t *revision2,
                 const char *relative_to_dir,
                 svn_depth_t depth,
                 svn_boolean_t ignore_ancestry,
                 svn_boolean_t no_diff_added,
                 svn_boolean_t no_diff_deleted,
                 svn_boolean_t show_copies_as_adds,
                 svn_boolean_t ignore_content_type,
                 svn_boolean_t ignore_properties,
                 svn_boolean_t properties_only,
                 svn_boolean_t use_git_diff_format,
                 const char *header_encoding,
                 svn_stream_t *outstream,
                 svn_stream_t *errstream,
                 const apr_array_header_t *changelists,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  diff_writer_info_t dwi = { 0 };
  svn_opt_revision_t peg_revision;
  const svn_diff_tree_processor_t *diff_processor;
  svn_diff_tree_processor_t *processor;

  if (ignore_properties && properties_only)
    return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                            _("Cannot ignore properties and show only "
                              "properties at the same time"));


  peg_revision.kind = svn_opt_revision_unspecified;


  dwi.ddi.orig_path_1 = path_or_url1;
  dwi.ddi.orig_path_2 = path_or_url2;

  SVN_ERR(create_diff_writer_info(&dwi, options,
                                  ctx->config, pool));
  dwi.pool = pool;
  dwi.outstream = outstream;
  dwi.errstream = errstream;
  dwi.header_encoding = header_encoding;

  dwi.force_binary = ignore_content_type;
  dwi.ignore_properties = ignore_properties;
  dwi.properties_only = properties_only;
  dwi.relative_to_dir = relative_to_dir;
  dwi.use_git_diff_format = use_git_diff_format;
  dwi.no_diff_added = no_diff_added;
  dwi.no_diff_deleted = no_diff_deleted;
  dwi.show_copies_as_adds = show_copies_as_adds;

  dwi.cancel_func = ctx->cancel_func;
  dwi.cancel_baton = ctx->cancel_baton;

  dwi.wc_ctx = ctx->wc_ctx;
  dwi.ddi.session_relpath = ((void*)0);
  dwi.ddi.anchor = ((void*)0);

  processor = svn_diff__tree_processor_create(&dwi, pool);

  processor->dir_added = diff_dir_added;
  processor->dir_changed = diff_dir_changed;
  processor->dir_deleted = diff_dir_deleted;

  processor->file_added = diff_file_added;
  processor->file_changed = diff_file_changed;
  processor->file_deleted = diff_file_deleted;

  diff_processor = processor;


  if (show_copies_as_adds || use_git_diff_format)
    ignore_ancestry = FALSE;

  return svn_error_trace(do_diff(((void*)0), ((void*)0), &dwi.ddi,
                                 path_or_url1, path_or_url2,
                                 revision1, revision2,
                                 &peg_revision, TRUE ,
                                 depth, ignore_ancestry, changelists,
                                 TRUE ,
                                 diff_processor, ctx, pool, pool));
}
