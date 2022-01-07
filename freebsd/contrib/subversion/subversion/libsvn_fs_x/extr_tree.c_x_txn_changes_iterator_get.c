
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fsap_data; } ;
typedef TYPE_1__ svn_fs_path_change_iterator_t ;
typedef int svn_fs_path_change3_t ;
typedef int svn_error_t ;
typedef int apr_hash_index_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_next (int *) ;
 int * apr_hash_this_val (int *) ;

__attribute__((used)) static svn_error_t *
x_txn_changes_iterator_get(svn_fs_path_change3_t **change,
                           svn_fs_path_change_iterator_t *iterator)
{
  apr_hash_index_t *hi = iterator->fsap_data;

  if (hi)
    {
      *change = apr_hash_this_val(hi);
      iterator->fsap_data = apr_hash_next(hi);
    }
  else
    {
      *change = ((void*)0);
    }

  return SVN_NO_ERROR;
}
