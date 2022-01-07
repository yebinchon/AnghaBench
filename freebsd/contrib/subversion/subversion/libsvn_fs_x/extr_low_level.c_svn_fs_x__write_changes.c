
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_x__change_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int nelts; } ;
typedef TYPE_1__ apr_array_header_t ;
struct TYPE_6__ {int * value; } ;


 TYPE_3__ APR_ARRAY_IDX (TYPE_1__*,int,int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_sort__hash (int *,int ,int *) ;
 int svn_sort__item_t ;
 int svn_sort_compare_items_lexically ;
 int svn_stream_puts (int *,char*) ;
 int write_change_entry (int *,int *,int *) ;

svn_error_t *
svn_fs_x__write_changes(svn_stream_t *stream,
                        svn_fs_t *fs,
                        apr_hash_t *changes,
                        svn_boolean_t terminate_list,
                        apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_array_header_t *sorted_changed_paths;
  int i;
  sorted_changed_paths = svn_sort__hash(changes,
                                        svn_sort_compare_items_lexically,
                                        scratch_pool);


  for (i = 0; i < sorted_changed_paths->nelts; ++i)
    {
      svn_fs_x__change_t *change;

      svn_pool_clear(iterpool);
      change = APR_ARRAY_IDX(sorted_changed_paths, i, svn_sort__item_t).value;


      SVN_ERR(write_change_entry(stream, change, iterpool));
    }

  if (terminate_list)
    svn_stream_puts(stream, "\n");

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
