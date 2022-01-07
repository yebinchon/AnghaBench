
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* parent; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_8__ {int path; TYPE_4__* client_url; int server_url; } ;
typedef TYPE_2__ svn_ra_svn__parent_t ;
struct TYPE_9__ {TYPE_1__* priv; } ;
typedef TYPE_3__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int data; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int reparent_server (TYPE_3__*,int ,int *) ;
 scalar_t__ svn_stringbuf_compare (TYPE_4__*,int ) ;
 int svn_stringbuf_setempty (int ) ;

__attribute__((used)) static svn_error_t *
ensure_exact_server_parent(svn_ra_session_t *ra_session,
                           apr_pool_t *scratch_pool)
{
  svn_ra_svn__session_baton_t *sess = ra_session->priv;
  svn_ra_svn__parent_t *parent = sess->parent;




  if (svn_stringbuf_compare(parent->client_url, parent->server_url))
    return SVN_NO_ERROR;


  SVN_ERR(reparent_server(ra_session, parent->client_url->data,
                          scratch_pool));
  svn_stringbuf_setempty(parent->path);

  return SVN_NO_ERROR;
}
