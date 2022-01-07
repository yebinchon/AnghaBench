
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t change_kind; int prop_mod; int text_mod; int node_kind; int copyfrom_rev; int copyfrom_path; int path; } ;
typedef TYPE_1__ svn_repos_path_change_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ started; int * conn; } ;
typedef TYPE_2__ log_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 size_t svn_fs_path_change_modify ;
 size_t svn_fs_path_change_replace ;
 int svn_ra_svn__start_list (int *,int *) ;
 int svn_ra_svn__write_data_log_changed_path (int *,int *,int *,char,int ,int ,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
path_change_receiver(void *baton,
                     svn_repos_path_change_t *change,
                     apr_pool_t *scratch_pool)
{
  const char symbol[] = "MADR";

  log_baton_t *b = baton;
  svn_ra_svn_conn_t *conn = b->conn;





  char action = ( change->change_kind < svn_fs_path_change_modify
                 || change->change_kind > svn_fs_path_change_replace)
              ? 0
              : symbol[change->change_kind];


  if (!b->started)
    {
      SVN_ERR(svn_ra_svn__start_list(conn, scratch_pool));
      SVN_ERR(svn_ra_svn__start_list(conn, scratch_pool));
      b->started = TRUE;
    }


  SVN_ERR(svn_ra_svn__write_data_log_changed_path(
              conn, scratch_pool,
              &change->path,
              action,
              change->copyfrom_path,
              change->copyfrom_rev,
              change->node_kind,
              change->text_mod,
              change->prop_mod));

  return SVN_NO_ERROR;
}
