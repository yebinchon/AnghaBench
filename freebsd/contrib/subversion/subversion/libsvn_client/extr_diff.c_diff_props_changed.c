
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_9__ {int session_relpath; int orig_path_2; int orig_path_1; int anchor; } ;
struct TYPE_10__ {int wc_ctx; int cancel_baton; int cancel_func; TYPE_1__ ddi; int use_git_diff_format; int relative_to_dir; int outstream; int header_encoding; scalar_t__ ignore_properties; } ;
typedef TYPE_2__ diff_writer_info_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_11__ {scalar_t__ nelts; } ;
typedef TYPE_3__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int display_prop_diffs (TYPE_3__*,int *,int *,char const*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int svn_categorize_props (TYPE_3__ const*,int *,int *,TYPE_3__**,int *) ;

__attribute__((used)) static svn_error_t *
diff_props_changed(const char *diff_relpath,
                   svn_revnum_t rev1,
                   svn_revnum_t rev2,
                   const apr_array_header_t *propchanges,
                   apr_hash_t *left_props,
                   apr_hash_t *right_props,
                   svn_boolean_t show_diff_header,
                   diff_writer_info_t *dwi,
                   apr_pool_t *scratch_pool)
{
  apr_array_header_t *props;


  if (dwi->ignore_properties)
    return SVN_NO_ERROR;

  SVN_ERR(svn_categorize_props(propchanges, ((void*)0), ((void*)0), &props,
                               scratch_pool));

  if (props->nelts > 0)
    {



      SVN_ERR(display_prop_diffs(props, left_props, right_props,
                                 diff_relpath,
                                 dwi->ddi.anchor,
                                 dwi->ddi.orig_path_1,
                                 dwi->ddi.orig_path_2,
                                 rev1,
                                 rev2,
                                 dwi->header_encoding,
                                 dwi->outstream,
                                 dwi->relative_to_dir,
                                 show_diff_header,
                                 dwi->use_git_diff_format,
                                 dwi->ddi.session_relpath,
                                 dwi->cancel_func,
                                 dwi->cancel_baton,
                                 dwi->wc_ctx,
                                 scratch_pool));
    }

  return SVN_NO_ERROR;
}
