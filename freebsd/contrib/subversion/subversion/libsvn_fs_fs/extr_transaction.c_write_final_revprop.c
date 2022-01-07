
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_fs_txn_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_TRUNCATE ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int SVN_FS__PROP_TXN_CHECK_LOCKS ;
 int SVN_FS__PROP_TXN_CHECK_OOD ;
 int SVN_FS__PROP_TXN_CLIENT_DATE ;
 int SVN_HASH_TERMINATOR ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_DATE ;
 int TRUE ;
 int apr_time_now () ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (int ) ;
 int svn_fs_fs__txn_proplist (int **,int *,int *) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,TYPE_1__*) ;
 int svn_hash_write2 (int *,int *,int ,int *) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_flush_to_disk (int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_stream_close (int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;
 int svn_time_to_cstring (int ,int *) ;

__attribute__((used)) static svn_error_t *
write_final_revprop(const char *path,
                    const char *perms_reference,
                    svn_fs_txn_t *txn,
                    svn_boolean_t flush_to_disk,
                    apr_pool_t *pool)
{
  apr_hash_t *txnprops;
  svn_string_t date;
  svn_string_t *client_date;
  apr_file_t *revprop_file;
  svn_stream_t *stream;

  SVN_ERR(svn_fs_fs__txn_proplist(&txnprops, txn, pool));


  svn_hash_sets(txnprops, SVN_FS__PROP_TXN_CHECK_OOD, ((void*)0));
  svn_hash_sets(txnprops, SVN_FS__PROP_TXN_CHECK_LOCKS, ((void*)0));

  client_date = svn_hash_gets(txnprops, SVN_FS__PROP_TXN_CLIENT_DATE);
  if (client_date)
    {
      svn_hash_sets(txnprops, SVN_FS__PROP_TXN_CLIENT_DATE, ((void*)0));
    }



  if (!client_date || strcmp(client_date->data, "1"))
    {
      date.data = svn_time_to_cstring(apr_time_now(), pool);
      date.len = strlen(date.data);
      svn_hash_sets(txnprops, SVN_PROP_REVISION_DATE, &date);
    }



  SVN_ERR(svn_io_file_open(&revprop_file, path,
                           APR_WRITE | APR_CREATE | APR_TRUNCATE
                           | APR_BUFFERED, APR_OS_DEFAULT, pool));

  stream = svn_stream_from_aprfile2(revprop_file, TRUE, pool);
  SVN_ERR(svn_hash_write2(txnprops, stream, SVN_HASH_TERMINATOR, pool));
  SVN_ERR(svn_stream_close(stream));

  if (flush_to_disk)
    SVN_ERR(svn_io_file_flush_to_disk(revprop_file, pool));
  SVN_ERR(svn_io_file_close(revprop_file, pool));

  SVN_ERR(svn_io_copy_perms(perms_reference, path, pool));

  return SVN_NO_ERROR;
}
