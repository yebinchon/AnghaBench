
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int db; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_WC_NOT_LOCKED ;
 TYPE_2__* SVN_NO_ERROR ;
 int TRUE ;
 TYPE_2__* probe (int ,char const**,char const*,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 TYPE_2__* svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_unknown ;
 TYPE_2__* svn_wc__db_read_kind (scalar_t__*,int ,char const*,int ,int ,int ,int *) ;
 TYPE_2__* svn_wc_adm_retrieve (TYPE_1__**,TYPE_1__*,char const*,int *) ;

svn_error_t *
svn_wc_adm_probe_retrieve(svn_wc_adm_access_t **adm_access,
                          svn_wc_adm_access_t *associated,
                          const char *path,
                          apr_pool_t *pool)
{
  const char *dir;
  const char *local_abspath;
  svn_node_kind_t kind;
  svn_error_t *err;

  SVN_ERR_ASSERT(associated != ((void*)0));

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  SVN_ERR(svn_wc__db_read_kind(&kind, associated->db, local_abspath,
                               TRUE ,
                               TRUE ,
                               FALSE ,
                               pool));

  if (kind == svn_node_dir)
    dir = path;
  else if (kind != svn_node_unknown)
    dir = svn_dirent_dirname(path, pool);
  else

    SVN_ERR(probe(associated->db, &dir, path, pool));

  err = svn_wc_adm_retrieve(adm_access, associated, dir, pool);
  if (err && err->apr_err == SVN_ERR_WC_NOT_LOCKED)
    {





      svn_error_clear(err);
      SVN_ERR(probe(associated->db, &dir, path, pool));
      SVN_ERR(svn_wc_adm_retrieve(adm_access, associated, dir, pool));
    }
  else
    return svn_error_trace(err);

  return SVN_NO_ERROR;
}
