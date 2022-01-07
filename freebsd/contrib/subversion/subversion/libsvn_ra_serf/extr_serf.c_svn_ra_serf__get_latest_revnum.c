
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int * priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
typedef int svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_ra_serf__get_youngest_revnum (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_serf__get_latest_revnum(svn_ra_session_t *ra_session,
                               svn_revnum_t *latest_revnum,
                               apr_pool_t *pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;

  return svn_error_trace(svn_ra_serf__get_youngest_revnum(
                           latest_revnum, session, pool));
}
