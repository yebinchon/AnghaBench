
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_path_change_iterator_t ;
typedef int svn_fs_path_change3_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ hi; int change; } ;
typedef TYPE_2__ fs_txn_changes_iterator_data_t ;
typedef int apr_ssize_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_next (scalar_t__) ;
 int apr_hash_this (scalar_t__,void const**,int *,void**) ;
 int convert_path_change (int *,void const*,int ,void*) ;

__attribute__((used)) static svn_error_t *
fs_txn_changes_iterator_get(svn_fs_path_change3_t **change,
                            svn_fs_path_change_iterator_t *iterator)
{
  fs_txn_changes_iterator_data_t *data = iterator->fsap_data;

  if (data->hi)
    {
      const void *key;
      apr_ssize_t length;
      void *value;
      apr_hash_this(data->hi, &key, &length, &value);

      convert_path_change(&data->change, key, length, value);

      *change = &data->change;
      data->hi = apr_hash_next(data->hi);
    }
  else
    {
      *change = ((void*)0);
    }

  return SVN_NO_ERROR;
}
