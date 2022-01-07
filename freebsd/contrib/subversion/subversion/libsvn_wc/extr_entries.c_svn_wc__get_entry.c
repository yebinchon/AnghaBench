
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_14__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_ERR_NODE_UNEXPECTED_KIND ;
 scalar_t__ SVN_ERR_WC_MISSING ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int get_entry_access_info (char const**,char const**,int *,char const*,scalar_t__,int *,int *) ;
 TYPE_2__* read_entry_pair (TYPE_1__ const**,TYPE_1__ const**,int *,char const*,char const*,int *,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (scalar_t__,int *,int ,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_unknown ;

svn_error_t *
svn_wc__get_entry(const svn_wc_entry_t **entry,
                  svn_wc__db_t *db,
                  const char *local_abspath,
                  svn_boolean_t allow_unversioned,
                  svn_node_kind_t kind,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  const char *dir_abspath;
  const char *entry_name;

  SVN_ERR(get_entry_access_info(&dir_abspath, &entry_name, db, local_abspath,
                                kind, scratch_pool, scratch_pool));

    {
      const svn_wc_entry_t *parent_entry;
      svn_error_t *err;
      err = read_entry_pair(&parent_entry, entry,
                            db, dir_abspath, entry_name,
                            result_pool, scratch_pool);
      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_MISSING || kind != svn_node_unknown
              || *entry_name != '\0')
            return svn_error_trace(err);
          svn_error_clear(err);
          err = svn_wc__get_entry(entry, db, local_abspath, allow_unversioned,
                                  svn_node_file, result_pool, scratch_pool);
          if (err == SVN_NO_ERROR)
            return SVN_NO_ERROR;
          if (err->apr_err != SVN_ERR_NODE_UNEXPECTED_KIND)
            return svn_error_trace(err);
          svn_error_clear(err);






          SVN_ERR_ASSERT(*entry != ((void*)0) && (*entry)->kind == svn_node_dir);
          return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                                 _("Admin area of '%s' is missing"),
                                 svn_dirent_local_style(local_abspath,
                                                        scratch_pool));
        }
    }

  if (*entry == ((void*)0))
    {
      if (allow_unversioned)
        return SVN_NO_ERROR;
      return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                               _("'%s' is not under version control"),
                               svn_dirent_local_style(local_abspath,
                                                      scratch_pool));
    }


  if ((kind == svn_node_file && (*entry)->kind != svn_node_file)
      || (kind == svn_node_dir && (*entry)->kind != svn_node_dir))
    return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                             _("'%s' is not of the right kind"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));

  return SVN_NO_ERROR;
}
