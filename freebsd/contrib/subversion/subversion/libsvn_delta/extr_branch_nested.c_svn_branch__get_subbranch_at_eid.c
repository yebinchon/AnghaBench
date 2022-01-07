
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_11__ {TYPE_1__* payload; } ;
typedef TYPE_2__ svn_element__content_t ;
struct TYPE_12__ {int txn; } ;
typedef TYPE_3__ svn_branch__state_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {scalar_t__ is_subbranch_root; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_branch__get_id (TYPE_3__*,int *) ;
 char* svn_branch__id_nest (char const*,int,int *) ;
 int svn_branch__state_get_element (TYPE_3__*,TYPE_2__**,int,int *) ;
 TYPE_3__* svn_branch__txn_get_branch_by_id (int ,char const*,int *) ;

svn_error_t *
svn_branch__get_subbranch_at_eid(svn_branch__state_t *branch,
                                 svn_branch__state_t **subbranch_p,
                                 int eid,
                                 apr_pool_t *scratch_pool)
{
  svn_element__content_t *element;

  SVN_ERR(svn_branch__state_get_element(branch, &element, eid, scratch_pool));
  if (element && element->payload->is_subbranch_root)
    {
      const char *branch_id = svn_branch__get_id(branch, scratch_pool);
      const char *subbranch_id = svn_branch__id_nest(branch_id, eid,
                                                     scratch_pool);

      *subbranch_p = svn_branch__txn_get_branch_by_id(branch->txn, subbranch_id,
                                                      scratch_pool);
    }
  else
    {
      *subbranch_p = ((void*)0);
    }
  return SVN_NO_ERROR;
}
