
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int node_status; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int svn_error_t ;
struct dir_delete_baton_t {int found_edit; int compared_abspaths; } ;
typedef int apr_pool_t ;


 int SVN_ERR_CEASE_INVOCATION ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * svn_error_create (int ,int *,int *) ;
 scalar_t__ svn_hash_gets (int ,char const*) ;




__attribute__((used)) static svn_error_t *
verify_touched_by_del_check(void *baton,
                            const char *local_abspath,
                            const svn_wc_status3_t *status,
                            apr_pool_t *scratch_pool)
{
  struct dir_delete_baton_t *delb = baton;

  if (svn_hash_gets(delb->compared_abspaths, local_abspath))
    return SVN_NO_ERROR;

  switch (status->node_status)
    {
      case 130:
      case 129:
      case 128:
        return SVN_NO_ERROR;

      default:
        delb->found_edit = TRUE;
        return svn_error_create(SVN_ERR_CEASE_INVOCATION, ((void*)0), ((void*)0));
    }
}
