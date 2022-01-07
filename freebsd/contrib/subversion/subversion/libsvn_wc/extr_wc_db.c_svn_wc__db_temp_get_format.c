
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int format; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_MISSING ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_temp_get_format(int *format,
                           svn_wc__db_t *db,
                           const char *local_dir_abspath,
                           apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_error_t *err;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_dir_abspath));


  err = svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                                local_dir_abspath, scratch_pool, scratch_pool);



  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY)
        return svn_error_trace(err);
      svn_error_clear(err);


      *format = 0;
      return svn_error_createf(SVN_ERR_WC_MISSING, ((void*)0),
                               _("'%s' is not a working copy"),
                               svn_dirent_local_style(local_dir_abspath,
                                                      scratch_pool));
    }

  SVN_ERR_ASSERT(wcroot != ((void*)0));
  SVN_ERR_ASSERT(wcroot->format >= 1);

  *format = wcroot->format;

  return SVN_NO_ERROR;
}
