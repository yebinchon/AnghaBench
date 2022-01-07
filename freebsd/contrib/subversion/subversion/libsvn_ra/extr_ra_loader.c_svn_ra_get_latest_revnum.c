
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
typedef int apr_pool_t ;
struct TYPE_5__ {int * (* get_latest_revnum ) (TYPE_2__*,int *,int *) ;} ;


 int * stub1 (TYPE_2__*,int *,int *) ;

svn_error_t *svn_ra_get_latest_revnum(svn_ra_session_t *session,
                                      svn_revnum_t *latest_revnum,
                                      apr_pool_t *pool)
{
  return session->vtable->get_latest_revnum(session, latest_revnum, pool);
}
