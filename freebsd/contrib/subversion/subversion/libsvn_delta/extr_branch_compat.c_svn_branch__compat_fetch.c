
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_pathrev_t ;
typedef int svn_error_t ;
struct TYPE_13__ {scalar_t__ rev; scalar_t__ eid; } ;
struct TYPE_12__ {TYPE_2__ branch_ref; } ;
typedef TYPE_1__ svn_element__payload_t ;
typedef TYPE_2__ svn_element__branch_ref_t ;
struct TYPE_14__ {int repos; } ;
typedef TYPE_3__ svn_branch__txn_t ;
struct TYPE_15__ {void* fetch_baton; int fetch_func; TYPE_3__* txn; } ;
typedef TYPE_4__ svn_branch__txn_priv_t ;
typedef int svn_branch__compat_fetch_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_hash_make (int *) ;
 int payload_fetch (TYPE_1__**,int *,TYPE_4__*,int *,int *,int *) ;
 int storage_pathrev_from_branch_ref (int *,TYPE_2__,int ,int *,int *) ;
 TYPE_1__* svn_element__payload_create_dir (int ,int *) ;

svn_error_t *
svn_branch__compat_fetch(svn_element__payload_t **payload_p,
                         svn_branch__txn_t *txn,
                         svn_element__branch_ref_t branch_ref,
                         svn_branch__compat_fetch_func_t fetch_func,
                         void *fetch_baton,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_branch__txn_priv_t eb;
  svn_pathrev_t storage_pathrev;


  if (branch_ref.rev == 0 && branch_ref.eid == 0)
    {
      *payload_p = svn_element__payload_create_dir(apr_hash_make(result_pool),
                                                   result_pool);
      return SVN_NO_ERROR;
    }

  eb.txn = txn;
  eb.fetch_func = fetch_func;
  eb.fetch_baton = fetch_baton;

  SVN_ERR(storage_pathrev_from_branch_ref(&storage_pathrev,
                                          branch_ref, txn->repos,
                                          scratch_pool, scratch_pool));

  SVN_ERR(payload_fetch(payload_p, ((void*)0),
                        &eb, &storage_pathrev, result_pool, scratch_pool));
  (*payload_p)->branch_ref = branch_ref;
  return SVN_NO_ERROR;
}
