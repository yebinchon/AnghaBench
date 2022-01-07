
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_4__ {int file_path; int * pool; } ;
typedef TYPE_1__ set_read_only_baton_t ;
typedef int apr_pool_t ;
typedef int apr_finfo_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN__APR_FINFO_READONLY ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 int apr_pstrdup (int *,char const*) ;
 int set_read_only ;
 int svn_io__is_finfo_read_only (scalar_t__*,int *,int *) ;
 int svn_io_set_file_read_write (char const*,int ,int *) ;
 int svn_io_stat (int *,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
auto_make_writable(const char *path,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_boolean_t is_read_only;
  apr_finfo_t finfo;

  SVN_ERR(svn_io_stat(&finfo, path, SVN__APR_FINFO_READONLY, scratch_pool));
  SVN_ERR(svn_io__is_finfo_read_only(&is_read_only, &finfo, scratch_pool));

  if (is_read_only)
    {


      set_read_only_baton_t *baton = apr_pcalloc(result_pool,
                                                  sizeof(*baton));
      baton->pool = result_pool;
      baton->file_path = apr_pstrdup(result_pool, path);
      apr_pool_cleanup_register(result_pool, baton,
                                set_read_only, apr_pool_cleanup_null);



      SVN_ERR(svn_io_set_file_read_write(path, FALSE, scratch_pool));
    }

  return SVN_NO_ERROR;
}
