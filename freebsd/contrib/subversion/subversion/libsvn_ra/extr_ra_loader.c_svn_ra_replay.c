
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int * (* replay ) (TYPE_2__*,int ,int ,int ,int const*,void*,int *) ;} ;


 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * stub1 (TYPE_2__*,int ,int ,int ,int const*,void*,int *) ;

svn_error_t *svn_ra_replay(svn_ra_session_t *session,
                           svn_revnum_t revision,
                           svn_revnum_t low_water_mark,
                           svn_boolean_t text_deltas,
                           const svn_delta_editor_t *editor,
                           void *edit_baton,
                           apr_pool_t *pool)
{
  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(revision)
                 && SVN_IS_VALID_REVNUM(low_water_mark));
  return session->vtable->replay(session, revision, low_water_mark,
                                 text_deltas, editor, edit_baton, pool);
}
