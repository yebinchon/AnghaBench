
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_branch__state_t ;
typedef int svn_branch__rev_bid_eid_t ;
typedef int svn_branch__eid_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* copy_tree ) (TYPE_2__*,int const*,int ,char const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_2__*,int const*,int ,char const*,int *) ;

svn_error_t *
svn_branch__state_copy_tree(svn_branch__state_t *branch,
                            const svn_branch__rev_bid_eid_t *src_el_rev,
                            svn_branch__eid_t new_parent_eid,
                            const char *new_name,
                            apr_pool_t *scratch_pool)
{
  SVN_ERR(branch->vtable->copy_tree(branch,
                                    src_el_rev, new_parent_eid, new_name,
                                    scratch_pool));
  return SVN_NO_ERROR;
}
