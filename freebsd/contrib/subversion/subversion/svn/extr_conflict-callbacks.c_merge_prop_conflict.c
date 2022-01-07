
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_diff_t ;
struct TYPE_4__ {int ignore_eol_style; } ;
typedef TYPE_1__ svn_diff_file_options_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int svn_diff_conflict_display_modified_original_latest ;
 TYPE_1__* svn_diff_file_options_create (int *) ;
 int svn_diff_mem_string_diff3 (int **,int const*,int const*,int const*,TYPE_1__*,int *) ;
 int svn_diff_mem_string_output_merge3 (int *,int *,int const*,int const*,int const*,int ,int ,int ,char*,int ,int ,void*,int *) ;
 int * svn_string_create_empty (int *) ;

__attribute__((used)) static svn_error_t *
merge_prop_conflict(svn_stream_t *output,
                    const svn_string_t *base_propval,
                    const svn_string_t *my_propval,
                    const svn_string_t *their_propval,
                    const svn_string_t *merged_propval,
                    svn_cancel_func_t cancel_func,
                    void *cancel_baton,
                    apr_pool_t *pool)
{
  svn_diff_file_options_t *options = svn_diff_file_options_create(pool);
  svn_diff_t *diff;



  if (base_propval == ((void*)0))
    base_propval = svn_string_create_empty(pool);
  if (my_propval == ((void*)0))
    my_propval = svn_string_create_empty(pool);
  if (their_propval == ((void*)0))
    their_propval = svn_string_create_empty(pool);

  options->ignore_eol_style = TRUE;
  SVN_ERR(svn_diff_mem_string_diff3(&diff, base_propval,
                                    merged_propval ?
                                      merged_propval : my_propval,
                                    their_propval, options, pool));
  SVN_ERR(svn_diff_mem_string_output_merge3(
            output, diff, base_propval,
            merged_propval ? merged_propval : my_propval, their_propval,
            _("||||||| ORIGINAL"),
            _("<<<<<<< MINE"),
            _(">>>>>>> THEIRS"),
            "=======",
            svn_diff_conflict_display_modified_original_latest,
            cancel_func,
            cancel_baton,
            pool));

  return SVN_NO_ERROR;
}
