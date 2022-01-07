
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN__NOT_IMPLEMENTED () ;

svn_error_t *
svn_ra__replay_ev2(svn_ra_session_t *session,
                   svn_revnum_t revision,
                   svn_revnum_t low_water_mark,
                   svn_boolean_t send_deltas,
                   svn_editor_t *editor,
                   apr_pool_t *scratch_pool)
{
  SVN__NOT_IMPLEMENTED();
}
