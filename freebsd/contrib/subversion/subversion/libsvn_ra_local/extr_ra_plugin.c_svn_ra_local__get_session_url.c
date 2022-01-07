
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_7__ {TYPE_1__* fs_path; int repos_url; } ;
typedef TYPE_3__ svn_ra_local__session_baton_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {scalar_t__ data; } ;


 int * SVN_NO_ERROR ;
 char* svn_path_url_add_component2 (int ,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__get_session_url(svn_ra_session_t *session,
                              const char **url,
                              apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  *url = svn_path_url_add_component2(sess->repos_url,
                                     sess->fs_path->data + 1,
                                     pool);
  return SVN_NO_ERROR;
}
