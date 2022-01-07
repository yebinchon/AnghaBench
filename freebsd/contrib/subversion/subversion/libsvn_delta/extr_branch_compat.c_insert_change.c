
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
typedef enum restructure_action_t { ____Placeholder_restructure_action_t } restructure_action_t ;
struct TYPE_6__ {int action; int changing_rev; } ;
typedef TYPE_1__ change_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;






 int SVN_ERR_MALFUNCTION () ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int VERIFY (int) ;
 int * apr_hash_pool_get (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 TYPE_1__* svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,int ,TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
insert_change(change_node_t **change_p, apr_hash_t *changes,
              const char *relpath,
              enum restructure_action_t action)
{
  apr_pool_t *changes_pool = apr_hash_pool_get(changes);
  change_node_t *change = svn_hash_gets(changes, relpath);


  switch (action)
    {
    case 128:
      if (change)
        {


          VERIFY(change->action == 131);
        }
      break;

    case 131:
      if (change)
        {


          VERIFY(change->action == 129);
          change->action = action;
        }
      break;







    case 129:
      SVN_ERR_MALFUNCTION();
    }

  if (change)
    {
      if (action != 128)
        {
          change->action = action;
        }
    }
  else
    {

      change = apr_pcalloc(changes_pool, sizeof(*change));
      change->action = action;
      change->changing_rev = SVN_INVALID_REVNUM;

      svn_hash_sets(changes, apr_pstrdup(changes_pool, relpath), change);
    }

  *change_p = change;
  return SVN_NO_ERROR;
}
