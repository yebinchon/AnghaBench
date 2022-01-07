
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct install_baton_t* baton; } ;
typedef TYPE_1__ svn_stream_t ;
typedef int svn_error_t ;
struct baton_apr {int dummy; } ;
struct install_baton_t {char const* tmp_path; struct baton_apr baton_apr; } ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef int HANDLE ;


 int APR_BINARY ;
 int APR_BUFFERED ;
 int APR_WRITE ;
 int CloseHandle (int ) ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_os_file_put (int **,int *,int,int *) ;
 struct install_baton_t* apr_pcalloc (int *,int) ;
 int assert (int) ;
 int create_tempfile (int *,char const**,char const*,int *,int *) ;
 int install_close ;
 char* svn_dirent_internal_style (char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_error_wrap_apr (scalar_t__,int *) ;
 int svn_io_file_del_none ;
 int svn_io_open_unique_file3 (int **,char const**,char const*,int ,int *,int *) ;
 TYPE_1__* svn_stream__from_aprfile (int *,int ,int ,int *) ;
 int svn_stream_set_close (TYPE_1__*,int ) ;

svn_error_t *
svn_stream__create_for_install(svn_stream_t **install_stream,
                               const char *tmp_abspath,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  apr_file_t *file;
  struct install_baton_t *ib;
  const char *tmp_path;
  SVN_ERR_ASSERT(svn_dirent_is_absolute(tmp_abspath));

  SVN_ERR(svn_io_open_unique_file3(&file, &tmp_path, tmp_abspath,
                                   svn_io_file_del_none,
                                   result_pool, scratch_pool));


  *install_stream = svn_stream__from_aprfile(file, FALSE, TRUE,
                                             result_pool);

  ib = apr_pcalloc(result_pool, sizeof(*ib));
  ib->baton_apr = *(struct baton_apr*)(*install_stream)->baton;

  assert((void*)&ib->baton_apr == (void*)ib);

  (*install_stream)->baton = ib;

  ib->tmp_path = tmp_path;


  svn_stream_set_close(*install_stream, install_close);

  return SVN_NO_ERROR;
}
