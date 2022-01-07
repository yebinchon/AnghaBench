
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int subcommand_baton_t ;
struct TYPE_4__ {int extra_to_session; int to_root; int * sb; int * to_session; int * from_session; } ;
typedef TYPE_1__ replay_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int open_target_session (int *,int *,int *) ;
 int svn_ra_get_repos_root2 (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
make_replay_baton(replay_baton_t **baton_p,
                  svn_ra_session_t *from_session,
                  svn_ra_session_t *to_session,
                  subcommand_baton_t *sb, apr_pool_t *pool)
{
  replay_baton_t *rb = apr_pcalloc(pool, sizeof(*rb));
  rb->from_session = from_session;
  rb->to_session = to_session;
  rb->sb = sb;

  SVN_ERR(svn_ra_get_repos_root2(to_session, &rb->to_root, pool));






  *baton_p = rb;
  return SVN_NO_ERROR;
}
