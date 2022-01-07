
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int rev; int relpath; } ;
typedef TYPE_2__ svn_pathrev_t ;
typedef int svn_error_t ;
struct TYPE_13__ {int pool; int text; int props; int kind; } ;
typedef TYPE_3__ svn_element__payload_t ;
struct TYPE_14__ {int fetch_baton; int (* fetch_func ) (int *,int *,int *,int *,int ,int ,int ,int ,int *) ;TYPE_1__* txn; } ;
typedef TYPE_4__ svn_branch__txn_priv_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int repos; } ;


 int PAYLOAD_IS_ONLY_BY_REFERENCE (TYPE_3__*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int payload_get_storage_pathrev (TYPE_2__*,TYPE_3__*,int ,int *) ;
 int stub1 (int *,int *,int *,int *,int ,int ,int ,int ,int *) ;
 int svn_element__payload_invariants (TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
payload_resolve(svn_element__payload_t *payload,
                svn_branch__txn_priv_t *eb,
                apr_pool_t *scratch_pool)
{
  svn_pathrev_t storage;

  SVN_ERR_ASSERT(svn_element__payload_invariants(payload));

  if (! PAYLOAD_IS_ONLY_BY_REFERENCE(payload))
    return SVN_NO_ERROR;

  SVN_ERR(payload_get_storage_pathrev(&storage, payload,
                                      eb->txn->repos,
                                      scratch_pool));

  SVN_ERR(eb->fetch_func(&payload->kind,
                         &payload->props,
                         &payload->text,
                         ((void*)0),
                         eb->fetch_baton,
                         storage.relpath, storage.rev,
                         payload->pool, scratch_pool));

  SVN_ERR_ASSERT(svn_element__payload_invariants(payload));
  SVN_ERR_ASSERT(! PAYLOAD_IS_ONLY_BY_REFERENCE(payload));
  return SVN_NO_ERROR;
}
