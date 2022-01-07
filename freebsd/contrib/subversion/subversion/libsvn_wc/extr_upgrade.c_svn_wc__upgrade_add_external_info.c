
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int svn_dirent_dirname (char const*,int *) ;



 int svn_wc__db_upgrade_insert_external (int ,char const*,int,int ,char const*,char const*,char const*,char const*,int ,int ,int *) ;

svn_error_t *
svn_wc__upgrade_add_external_info(svn_wc_context_t *wc_ctx,
                                  const char *local_abspath,
                                  svn_node_kind_t kind,
                                  const char *def_local_abspath,
                                  const char *repos_relpath,
                                  const char *repos_root_url,
                                  const char *repos_uuid,
                                  svn_revnum_t def_peg_revision,
                                  svn_revnum_t def_revision,
                                  apr_pool_t *scratch_pool)
{
  svn_node_kind_t db_kind;
  switch (kind)
    {
      case 130:
        db_kind = 130;
        break;

      case 129:
        db_kind = 129;
        break;

      case 128:
        db_kind = 128;
        break;

      default:
        SVN_ERR_MALFUNCTION();
    }

  SVN_ERR(svn_wc__db_upgrade_insert_external(wc_ctx->db, local_abspath,
                                             db_kind,
                                             svn_dirent_dirname(local_abspath,
                                                                scratch_pool),
                                             def_local_abspath, repos_relpath,
                                             repos_root_url, repos_uuid,
                                             def_peg_revision, def_revision,
                                             scratch_pool));
  return SVN_NO_ERROR;
}
