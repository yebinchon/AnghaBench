
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
struct TYPE_9__ {int * conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
typedef int svn_ra_svn__list_t ;
struct TYPE_10__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_11__ {char const* last_author; int time; int created_rev; int has_props; int size; int kind; } ;
typedef TYPE_3__ svn_dirent_t ;
typedef int svn_boolean_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int handle_auth_request (TYPE_1__*,int *) ;
 int handle_unsupported_cmd (int ,int ) ;
 char* reparent_path (TYPE_2__*,char const*,int *) ;
 TYPE_3__* svn_dirent_create (int *) ;
 int svn_node_kind_from_word (char const*) ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**,int *,int *,int *,char const**,char const**) ;
 int svn_ra_svn__read_cmd_response (int *,int *,char*,int **) ;
 int svn_ra_svn__write_cmd_stat (int *,int *,char const*,int ) ;
 int svn_time_from_cstring (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *ra_svn_stat(svn_ra_session_t *session,
                                const char *path, svn_revnum_t rev,
                                svn_dirent_t **dirent, apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_ra_svn__list_t *list = ((void*)0);
  svn_dirent_t *the_dirent;

  path = reparent_path(session, path, pool);
  SVN_ERR(svn_ra_svn__write_cmd_stat(conn, pool, path, rev));
  SVN_ERR(handle_unsupported_cmd(handle_auth_request(sess_baton, pool),
                                 N_("'stat' not implemented")));
  SVN_ERR(svn_ra_svn__read_cmd_response(conn, pool, "(?l)", &list));

  if (! list)
    {
      *dirent = ((void*)0);
    }
  else
    {
      const char *kind, *cdate, *cauthor;
      svn_boolean_t has_props;
      svn_revnum_t crev;
      apr_uint64_t size;

      SVN_ERR(svn_ra_svn__parse_tuple(list, "wnbr(?c)(?c)",
                                      &kind, &size, &has_props,
                                      &crev, &cdate, &cauthor));

      the_dirent = svn_dirent_create(pool);
      the_dirent->kind = svn_node_kind_from_word(kind);
      the_dirent->size = size;
      the_dirent->has_props = has_props;
      the_dirent->created_rev = crev;
      SVN_ERR(svn_time_from_cstring(&the_dirent->time, cdate, pool));
      the_dirent->last_author = cauthor;

      *dirent = the_dirent;
    }

  return SVN_NO_ERROR;
}
