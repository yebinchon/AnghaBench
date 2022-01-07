
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_8__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_path_change2_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_9__ {scalar_t__ format; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_10__ {int nelts; } ;
typedef TYPE_3__ apr_array_header_t ;
struct TYPE_11__ {char* key; int * value; } ;


 TYPE_6__ APR_ARRAY_IDX (TYPE_3__*,int,int ) ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__MIN_KIND_IN_CHANGED_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_MERGEINFO_IN_CHANGED_FORMAT ;
 int * SVN_NO_ERROR ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_3__* svn_sort__hash (int *,int ,int *) ;
 int svn_sort__item_t ;
 int svn_sort_compare_items_lexically ;
 int svn_stream_puts (int *,char*) ;
 int write_change_entry (int *,char const*,int *,int,int,int *) ;

svn_error_t *
svn_fs_fs__write_changes(svn_stream_t *stream,
                         svn_fs_t *fs,
                         apr_hash_t *changes,
                         svn_boolean_t terminate_list,
                         apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_boolean_t include_node_kinds =
      ffd->format >= SVN_FS_FS__MIN_KIND_IN_CHANGED_FORMAT;
  svn_boolean_t include_mergeinfo_mods =
      ffd->format >= SVN_FS_FS__MIN_MERGEINFO_IN_CHANGED_FORMAT;
  apr_array_header_t *sorted_changed_paths;
  int i;
  sorted_changed_paths = svn_sort__hash(changes,
                                        svn_sort_compare_items_lexically,
                                        scratch_pool);


  for (i = 0; i < sorted_changed_paths->nelts; ++i)
    {
      svn_fs_path_change2_t *change;
      const char *path;

      svn_pool_clear(iterpool);

      change = APR_ARRAY_IDX(sorted_changed_paths, i, svn_sort__item_t).value;
      path = APR_ARRAY_IDX(sorted_changed_paths, i, svn_sort__item_t).key;


      SVN_ERR(write_change_entry(stream, path, change, include_node_kinds,
                                 include_mergeinfo_mods, iterpool));
    }

  if (terminate_list)
    svn_stream_puts(stream, "\n");

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
