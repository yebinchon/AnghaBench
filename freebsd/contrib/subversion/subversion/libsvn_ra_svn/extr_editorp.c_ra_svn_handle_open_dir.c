
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int baton; int pool; } ;
typedef TYPE_2__ ra_svn_token_entry_t ;
struct TYPE_10__ {TYPE_1__* editor; } ;
typedef TYPE_3__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int (* open_directory ) (char const*,int ,int ,int *,void**) ;} ;


 int FALSE ;
 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int lookup_token (TYPE_3__*,int *,int ,TYPE_2__**) ;
 int store_token (TYPE_3__*,void*,int *,int ,int *) ;
 int stub1 (char const*,int ,int ,int *,void**) ;
 int * svn_pool_create (int ) ;
 int svn_ra_svn__parse_tuple (int const*,char*,char const**,int **,int **,int *) ;
 char* svn_relpath_canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
ra_svn_handle_open_dir(svn_ra_svn_conn_t *conn,
                       apr_pool_t *pool,
                       const svn_ra_svn__list_t *params,
                       ra_svn_driver_state_t *ds)
{
  const char *path;
  svn_string_t *token, *child_token;
  svn_revnum_t rev;
  ra_svn_token_entry_t *entry;
  apr_pool_t *subpool;
  void *child_baton;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "css(?r)", &path, &token,
                                  &child_token, &rev));
  SVN_ERR(lookup_token(ds, token, FALSE, &entry));
  subpool = svn_pool_create(entry->pool);
  path = svn_relpath_canonicalize(path, pool);
  SVN_CMD_ERR(ds->editor->open_directory(path, entry->baton, rev, subpool,
                                         &child_baton));
  store_token(ds, child_baton, child_token, FALSE, subpool);
  return SVN_NO_ERROR;
}
