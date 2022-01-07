
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* parent; } ;
typedef TYPE_2__ svn_ra_svn__session_baton_t ;
struct TYPE_8__ {TYPE_1__* client_url; } ;
typedef TYPE_3__ svn_ra_svn__parent_t ;
struct TYPE_9__ {TYPE_2__* priv; } ;
typedef TYPE_4__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int len; int data; } ;


 int * SVN_NO_ERROR ;
 char* apr_pstrmemdup (int *,int ,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_get_session_url(svn_ra_session_t *session,
                                           const char **url,
                                           apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  svn_ra_svn__parent_t *parent = sess->parent;

  *url = apr_pstrmemdup(pool, parent->client_url->data,
                        parent->client_url->len);

  return SVN_NO_ERROR;
}
