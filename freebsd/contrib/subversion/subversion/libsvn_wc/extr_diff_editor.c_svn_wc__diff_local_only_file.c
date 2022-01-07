
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_11__ {int (* file_added ) (char const*,TYPE_2__*,TYPE_2__*,char const*,char const*,int *,int *,void*,TYPE_1__ const*,int *) ;int (* file_opened ) (void**,int*,char const*,int *,TYPE_2__*,TYPE_2__*,void*,TYPE_1__ const*,int *,int *) ;} ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
struct TYPE_12__ {char const* repos_relpath; char const* moved_from_relpath; } ;
typedef TYPE_2__ svn_diff_source_t ;
typedef int svn_checksum_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC_TRANSLATE_TO_NF ;
 int SVN_WC_TRANSLATE_USE_GLOBAL_TMP ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int assert (int) ;
 int stub1 (void**,int*,char const*,int *,TYPE_2__*,TYPE_2__*,void*,TYPE_1__ const*,int *,int *) ;
 int stub2 (char const*,TYPE_2__*,TYPE_2__*,char const*,char const*,int *,int *,void*,TYPE_1__ const*,int *) ;
 TYPE_2__* svn_diff__source_create (int ,int *) ;
 scalar_t__ svn_node_file ;
 int * svn_prop_hash_dup (int *,int *) ;
 int svn_wc__db_pristine_get_path (char const**,int *,char const*,int const*,int *,int *) ;
 int svn_wc__db_read_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int const**,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int*,int*,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_read_pristine_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int const**,int *,int*,int **,int *,char const*,int *,int *) ;
 int svn_wc__db_read_pristine_props (int **,int *,char const*,int *,int *) ;
 int svn_wc__db_read_props (int **,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_normal ;
 int svn_wc__internal_file_modified_p (int*,int *,char const*,int,int *) ;
 int svn_wc__internal_translated_file (char const**,char const*,int *,char const*,int,int ,void*,int *,int *) ;

svn_error_t *
svn_wc__diff_local_only_file(svn_wc__db_t *db,
                             const char *local_abspath,
                             const char *relpath,
                             const char *moved_from_relpath,
                             const svn_diff_tree_processor_t *processor,
                             void *processor_parent_baton,
                             svn_boolean_t diff_pristine,
                             svn_cancel_func_t cancel_func,
                             void *cancel_baton,
                             apr_pool_t *scratch_pool)
{
  svn_diff_source_t *right_src;
  svn_diff_source_t *copyfrom_src = ((void*)0);
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  const svn_checksum_t *checksum;
  const char *original_repos_relpath;
  svn_revnum_t original_revision;
  svn_boolean_t had_props;
  svn_boolean_t props_mod;
  apr_hash_t *pristine_props;
  apr_hash_t *right_props = ((void*)0);
  const char *pristine_file;
  const char *translated_file;
  svn_revnum_t revision;
  void *file_baton = ((void*)0);
  svn_boolean_t skip = FALSE;
  svn_boolean_t file_mod = TRUE;

  SVN_ERR(svn_wc__db_read_info(&status, &kind, &revision, ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), &checksum, ((void*)0),
                               &original_repos_relpath, ((void*)0), ((void*)0),
                               &original_revision, ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), &had_props,
                               &props_mod, ((void*)0), ((void*)0), ((void*)0),
                               db, local_abspath,
                               scratch_pool, scratch_pool));

  assert(kind == svn_node_file
         && (status == svn_wc__db_status_normal
             || status == svn_wc__db_status_added
             || (status == svn_wc__db_status_deleted && diff_pristine)));


  if (status == svn_wc__db_status_deleted)
    {
      assert(diff_pristine);

      SVN_ERR(svn_wc__db_read_pristine_info(&status, &kind, ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), &checksum, ((void*)0), &had_props,
                                            &pristine_props,
                                            db, local_abspath,
                                            scratch_pool, scratch_pool));
      props_mod = FALSE;
    }
  else if (!had_props)
    pristine_props = apr_hash_make(scratch_pool);
  else
    SVN_ERR(svn_wc__db_read_pristine_props(&pristine_props,
                                           db, local_abspath,
                                           scratch_pool, scratch_pool));

  if (original_repos_relpath)
    {
      copyfrom_src = svn_diff__source_create(original_revision, scratch_pool);
      copyfrom_src->repos_relpath = original_repos_relpath;
      copyfrom_src->moved_from_relpath = moved_from_relpath;
    }

  if (props_mod || !SVN_IS_VALID_REVNUM(revision))
    right_src = svn_diff__source_create(SVN_INVALID_REVNUM, scratch_pool);
  else
    {
      if (diff_pristine)
        file_mod = FALSE;
      else
        SVN_ERR(svn_wc__internal_file_modified_p(&file_mod, db, local_abspath,
                                                 FALSE, scratch_pool));

      if (!file_mod)
        right_src = svn_diff__source_create(revision, scratch_pool);
      else
        right_src = svn_diff__source_create(SVN_INVALID_REVNUM, scratch_pool);
    }

  SVN_ERR(processor->file_opened(&file_baton, &skip,
                                 relpath,
                                 ((void*)0) ,
                                 right_src,
                                 copyfrom_src,
                                 processor_parent_baton,
                                 processor,
                                 scratch_pool, scratch_pool));

  if (skip)
    return SVN_NO_ERROR;

  if (props_mod && !diff_pristine)
    SVN_ERR(svn_wc__db_read_props(&right_props, db, local_abspath,
                                  scratch_pool, scratch_pool));
  else
    right_props = svn_prop_hash_dup(pristine_props, scratch_pool);

  if (checksum)
    SVN_ERR(svn_wc__db_pristine_get_path(&pristine_file, db, local_abspath,
                                         checksum, scratch_pool, scratch_pool));
  else
    pristine_file = ((void*)0);

  if (diff_pristine)
    {
      translated_file = pristine_file;
    }
  else
    {
      SVN_ERR(svn_wc__internal_translated_file(
           &translated_file, local_abspath, db, local_abspath,
           SVN_WC_TRANSLATE_TO_NF | SVN_WC_TRANSLATE_USE_GLOBAL_TMP,
           cancel_func, cancel_baton,
           scratch_pool, scratch_pool));
    }

  SVN_ERR(processor->file_added(relpath,
                                copyfrom_src,
                                right_src,
                                copyfrom_src
                                  ? pristine_file
                                  : ((void*)0),
                                translated_file,
                                copyfrom_src
                                  ? pristine_props
                                  : ((void*)0),
                                right_props,
                                file_baton,
                                processor,
                                scratch_pool));

  return SVN_NO_ERROR;
}
