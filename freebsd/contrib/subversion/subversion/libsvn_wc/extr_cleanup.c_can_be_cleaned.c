
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_NOT_WORKING_COPY ;
 int SVN_ERR_WC_UNSUPPORTED_FORMAT ;
 int * SVN_NO_ERROR ;
 int SVN_WC__WC_NG_VERSION ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_wc__internal_check_wc (int*,int *,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
can_be_cleaned(int *wc_format,
               svn_wc__db_t *db,
               const char *local_abspath,
               apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_wc__internal_check_wc(wc_format, db,
                                    local_abspath, FALSE, scratch_pool));


  if (*wc_format == 0)
    return svn_error_createf(SVN_ERR_WC_NOT_WORKING_COPY, ((void*)0),
                             _("'%s' is not a working copy directory"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));

  if (*wc_format < SVN_WC__WC_NG_VERSION)
    return svn_error_create(SVN_ERR_WC_UNSUPPORTED_FORMAT, ((void*)0),
                            _("Log format too old, please use "
                              "Subversion 1.6 or earlier"));

  return SVN_NO_ERROR;
}
