
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_client_conflict_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ nelts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int svn_client_conflict_get_conflicted (int *,TYPE_1__**,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
assert_prop_conflict(svn_client_conflict_t *conflict, apr_pool_t *scratch_pool)
{
  apr_array_header_t *props_conflicted;

  SVN_ERR(svn_client_conflict_get_conflicted(((void*)0), &props_conflicted, ((void*)0),
                                             conflict, scratch_pool,
                                             scratch_pool));


  SVN_ERR_ASSERT(props_conflicted && props_conflicted->nelts > 0);

  return SVN_NO_ERROR;
}
