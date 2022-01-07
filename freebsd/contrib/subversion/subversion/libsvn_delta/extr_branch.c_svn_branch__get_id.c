
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* bid; } ;
typedef TYPE_1__ svn_branch__state_t ;
typedef int apr_pool_t ;



const char *
svn_branch__get_id(const svn_branch__state_t *branch,
                   apr_pool_t *result_pool)
{
  return branch->bid;
}
