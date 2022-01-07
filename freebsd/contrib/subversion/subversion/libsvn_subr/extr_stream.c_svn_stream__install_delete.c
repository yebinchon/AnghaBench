
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct install_baton_t* baton; } ;
typedef TYPE_2__ svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int file; } ;
struct install_baton_t {int tmp_path; TYPE_1__ baton_apr; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_error_clear (int *) ;
 int * svn_error_trace (int ) ;
 int * svn_io__win_delete_file_on_close (int ,int ,int *) ;
 int svn_io_file_close (int ,int *) ;
 int svn_io_remove_file2 (int ,int ,int *) ;

svn_error_t *
svn_stream__install_delete(svn_stream_t *install_stream,
                           apr_pool_t *scratch_pool)
{
  struct install_baton_t *ib = install_stream->baton;
  SVN_ERR(svn_io_file_close(ib->baton_apr.file, scratch_pool));

  return svn_error_trace(svn_io_remove_file2(ib->tmp_path, FALSE,
                                             scratch_pool));
}
