
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char const* repos_root; } ;
typedef TYPE_2__ svn_ra_svn_conn_t ;
struct TYPE_10__ {TYPE_2__* conn; TYPE_4__* parent; } ;
typedef TYPE_3__ svn_ra_svn__session_baton_t ;
struct TYPE_11__ {int path; int client_url; TYPE_1__* server_url; } ;
typedef TYPE_4__ svn_ra_svn__parent_t ;
struct TYPE_12__ {TYPE_3__* priv; } ;
typedef TYPE_5__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {char const* data; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int reparent_server (TYPE_5__*,char const*,int *) ;
 int svn_stringbuf_set (int ,char const*) ;
 int svn_stringbuf_setempty (int ) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *ra_svn_reparent(svn_ra_session_t *ra_session,
                                    const char *url,
                                    apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = ra_session->priv;
  svn_ra_svn__parent_t *parent = sess->parent;
  svn_ra_svn_conn_t *conn = sess->conn;
  const char *path;



  path = svn_uri_skip_ancestor(parent->server_url->data, url, pool);
  if (!path)
    {





      path = conn->repos_root
           ? svn_uri_skip_ancestor(conn->repos_root, url, pool)
           : ((void*)0);

      if (path)
        SVN_ERR(reparent_server(ra_session, conn->repos_root, pool));
      else
        SVN_ERR(reparent_server(ra_session, url, pool));
    }



  svn_stringbuf_set(parent->client_url, url);
  if (path)
    svn_stringbuf_set(parent->path, path);
  else
    svn_stringbuf_setempty(parent->path);

  return SVN_NO_ERROR;
}
