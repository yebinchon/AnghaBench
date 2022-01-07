
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_7__ {int revision; } ;
typedef TYPE_1__ svn_diff_source_t ;
typedef scalar_t__ svn_boolean_t ;
struct svn_diff_tree_processor_t {int * baton; } ;
typedef int diff_writer_info_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int diff_content_changed (scalar_t__*,char const*,char const*,char const*,int ,int ,int *,int *,int ,scalar_t__,int *,int ,int *,int *) ;
 int diff_props_changed (char const*,int ,int ,TYPE_2__ const*,int *,int *,int,int *,int *) ;
 int svn_diff_op_modified ;

__attribute__((used)) static svn_error_t *
diff_file_changed(const char *relpath,
                  const svn_diff_source_t *left_source,
                  const svn_diff_source_t *right_source,
                  const char *left_file,
                  const char *right_file,
                            apr_hash_t *left_props,
                            apr_hash_t *right_props,
                  svn_boolean_t file_modified,
                  const apr_array_header_t *prop_changes,
                  void *file_baton,
                  const struct svn_diff_tree_processor_t *processor,
                  apr_pool_t *scratch_pool)
{
  diff_writer_info_t *dwi = processor->baton;
  svn_boolean_t wrote_header = FALSE;

  if (file_modified)
    SVN_ERR(diff_content_changed(&wrote_header, relpath,
                                 left_file, right_file,
                                 left_source->revision,
                                 right_source->revision,
                                 left_props, right_props,
                                 svn_diff_op_modified, FALSE,
                                 ((void*)0),
                                 SVN_INVALID_REVNUM, dwi,
                                 scratch_pool));
  if (prop_changes->nelts > 0)
    SVN_ERR(diff_props_changed(relpath,
                               left_source->revision,
                               right_source->revision, prop_changes,
                               left_props, right_props, !wrote_header,
                               dwi, scratch_pool));
  return SVN_NO_ERROR;
}
