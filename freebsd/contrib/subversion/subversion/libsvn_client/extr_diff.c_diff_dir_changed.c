
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int revision; } ;
typedef TYPE_1__ svn_diff_source_t ;
struct svn_diff_tree_processor_t {int * baton; } ;
typedef int diff_writer_info_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int diff_props_changed (char const*,int ,int ,int const*,int *,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
diff_dir_changed(const char *relpath,
                 const svn_diff_source_t *left_source,
                 const svn_diff_source_t *right_source,
                           apr_hash_t *left_props,
                           apr_hash_t *right_props,
                 const apr_array_header_t *prop_changes,
                 void *dir_baton,
                 const struct svn_diff_tree_processor_t *processor,
                 apr_pool_t *scratch_pool)
{
  diff_writer_info_t *dwi = processor->baton;

  SVN_ERR(diff_props_changed(relpath,
                             left_source->revision,
                             right_source->revision,
                             prop_changes,
                             left_props, right_props,
                             TRUE ,
                             dwi,
                             scratch_pool));

  return SVN_NO_ERROR;
}
