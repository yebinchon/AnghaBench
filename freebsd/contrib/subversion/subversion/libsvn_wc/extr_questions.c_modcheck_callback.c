
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int node_status; int const text_status; int const prop_status; int actual_kind; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int svn_error_t ;
struct TYPE_5__ {void* found_not_delete; void* found_mod; int ignore_unversioned; } ;
typedef TYPE_2__ modcheck_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR_CEASE_INVOCATION ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_node_none ;
 int svn_node_unknown ;
__attribute__((used)) static svn_error_t *
modcheck_callback(void *baton,
                  const char *local_abspath,
                  const svn_wc_status3_t *status,
                  apr_pool_t *scratch_pool)
{
  modcheck_baton_t *mb = baton;

  switch (status->node_status)
    {
      case 131:
      case 136:
      case 132:
      case 137:
        break;

      case 135:
        if ((status->text_status != 131
             && status->text_status != 132)
            || (status->prop_status != 131
                && status->prop_status != 132))
          {
            mb->found_mod = TRUE;
            mb->found_not_delete = TRUE;

            return svn_error_create(SVN_ERR_CEASE_INVOCATION, ((void*)0), ((void*)0));
          }
        break;

      case 138:
        mb->found_mod = TRUE;
        if (!mb->ignore_unversioned
            && status->actual_kind != svn_node_none
            && status->actual_kind != svn_node_unknown)
          {

            mb->found_not_delete = TRUE;
            return svn_error_create(SVN_ERR_CEASE_INVOCATION, ((void*)0), ((void*)0));
          }
        break;

      case 128:
        if (mb->ignore_unversioned)
          break;

      case 134:
      case 130:
        mb->found_mod = TRUE;
        mb->found_not_delete = TRUE;

        return svn_error_create(SVN_ERR_CEASE_INVOCATION, ((void*)0), ((void*)0));

      default:
      case 139:
      case 129:
      case 133:
        mb->found_mod = TRUE;
        mb->found_not_delete = TRUE;

        return svn_error_create(SVN_ERR_CEASE_INVOCATION, ((void*)0), ((void*)0));
    }

  return SVN_NO_ERROR;
}
