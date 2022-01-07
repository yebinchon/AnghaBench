
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int (* file_deleted ) (char const*,int *,char const*,int *,void*,TYPE_1__ const*,int *) ;int (* file_opened ) (void**,scalar_t__*,char const*,int *,int *,int *,void*,TYPE_1__ const*,int *,int *) ;} ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (void**,scalar_t__*,char const*,int *,int *,int *,void*,TYPE_1__ const*,int *,int *) ;
 int stub2 (char const*,int *,char const*,int *,void*,TYPE_1__ const*,int *) ;
 int * svn_diff__source_create (int ,int *) ;
 scalar_t__ svn_node_file ;
 int svn_wc__db_base_get_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int const**,int *,int *,int *,int **,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_pristine_get_path (char const**,int *,char const*,int const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_normal ;

svn_error_t *
svn_wc__diff_base_only_file(svn_wc__db_t *db,
                            const char *local_abspath,
                            const char *relpath,
                            svn_revnum_t revision,
                            const svn_diff_tree_processor_t *processor,
                            void *processor_parent_baton,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  const svn_checksum_t *checksum;
  apr_hash_t *props;
  void *file_baton = ((void*)0);
  svn_boolean_t skip = FALSE;
  svn_diff_source_t *left_src;
  const char *pristine_file;

  SVN_ERR(svn_wc__db_base_get_info(&status, &kind,
                                   SVN_IS_VALID_REVNUM(revision)
                                        ? ((void*)0) : &revision,
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   &checksum, ((void*)0), ((void*)0), ((void*)0), &props, ((void*)0),
                                   db, local_abspath,
                                   scratch_pool, scratch_pool));

  SVN_ERR_ASSERT(status == svn_wc__db_status_normal
                 && kind == svn_node_file
                 && checksum);

  left_src = svn_diff__source_create(revision, scratch_pool);

  SVN_ERR(processor->file_opened(&file_baton, &skip,
                                 relpath,
                                 left_src,
                                 ((void*)0) ,
                                 ((void*)0) ,
                                 processor_parent_baton,
                                 processor,
                                 scratch_pool, scratch_pool));

  if (skip)
    return SVN_NO_ERROR;

  SVN_ERR(svn_wc__db_pristine_get_path(&pristine_file,
                                       db, local_abspath, checksum,
                                       scratch_pool, scratch_pool));

  SVN_ERR(processor->file_deleted(relpath,
                                  left_src,
                                  pristine_file,
                                  props,
                                  file_baton,
                                  processor,
                                  scratch_pool));

  return SVN_NO_ERROR;
}
