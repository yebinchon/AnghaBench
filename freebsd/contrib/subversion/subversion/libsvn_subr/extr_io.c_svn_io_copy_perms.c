
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_node_kind_t ;
struct TYPE_10__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int protection; } ;
typedef TYPE_2__ apr_finfo_t ;


 int APR_FINFO_PROT ;
 scalar_t__ APR_STATUS_IS_ENOTIMPL (int ) ;
 scalar_t__ APR_STATUS_IS_INCOMPLETE (int ) ;
 int SVN_ERR (int ) ;
 TYPE_1__* SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_1__* file_perms_set (char const*,int ,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_quick_wrapf (TYPE_1__*,int ,int ) ;
 int svn_io_check_special_path (char const*,int *,scalar_t__*,int *) ;
 int svn_io_stat (TYPE_2__*,char const*,int ,int *) ;

svn_error_t *
svn_io_copy_perms(const char *src,
                  const char *dst,
                  apr_pool_t *pool)
{







  {
    apr_finfo_t finfo;
    svn_node_kind_t kind;
    svn_boolean_t is_special;
    svn_error_t *err;


    SVN_ERR(svn_io_check_special_path(dst, &kind, &is_special, pool));
    if (is_special)
      return SVN_NO_ERROR;

    SVN_ERR(svn_io_stat(&finfo, src, APR_FINFO_PROT, pool));
    err = file_perms_set(dst, finfo.protection, pool);
    if (err)
      {





        if (APR_STATUS_IS_INCOMPLETE(err->apr_err) ||
            APR_STATUS_IS_ENOTIMPL(err->apr_err))
          svn_error_clear(err);
        else
          {
            return svn_error_quick_wrapf(
                     err, _("Can't set permissions on '%s'"),
                     svn_dirent_local_style(dst, pool));
          }
      }
  }


  return SVN_NO_ERROR;
}
