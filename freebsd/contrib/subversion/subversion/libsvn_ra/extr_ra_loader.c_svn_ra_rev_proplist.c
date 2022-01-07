
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
typedef int apr_hash_t ;
struct TYPE_5__ {int * (* rev_proplist ) (TYPE_2__*,int ,int **,int *) ;} ;


 int SVN_ERR_ASSERT (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * stub1 (TYPE_2__*,int ,int **,int *) ;

svn_error_t *svn_ra_rev_proplist(svn_ra_session_t *session,
                                 svn_revnum_t rev,
                                 apr_hash_t **props,
                                 apr_pool_t *pool)
{
  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(rev));
  return session->vtable->rev_proplist(session, rev, props, pool);
}
