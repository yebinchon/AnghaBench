
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* conn; } ;
typedef TYPE_2__ ra_svn_edit_baton_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {scalar_t__ may_check_for_error; } ;


 int * SVN_NO_ERROR ;
 int * check_for_error_internal (TYPE_2__*,int *) ;

__attribute__((used)) static svn_error_t *
check_for_error(ra_svn_edit_baton_t *eb, apr_pool_t *pool)
{
  return eb->conn->may_check_for_error
    ? check_for_error_internal(eb, pool)
    : SVN_NO_ERROR;
}
