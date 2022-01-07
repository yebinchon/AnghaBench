
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int strlen (char const*) ;
 int svn_fs_x__path_txn_current (int *,int *) ;
 int svn_fs_x__path_uuid (int *,int *) ;
 int svn_io_write_atomic2 (int ,char const*,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
reset_txn_number(svn_fs_t *fs,
                 apr_pool_t *scratch_pool)
{
  const char *initial_txn = "0\n";
  SVN_ERR(svn_io_write_atomic2(svn_fs_x__path_txn_current(fs, scratch_pool),
                               initial_txn, strlen(initial_txn),
                               svn_fs_x__path_uuid(fs, scratch_pool),
                               FALSE, scratch_pool));

  return SVN_NO_ERROR;
}
