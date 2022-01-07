
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ action; int deleting_rev; scalar_t__ deleting; int changing_rev; } ;
typedef TYPE_1__ change_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 scalar_t__ RESTRUCTURE_ADD ;
 scalar_t__ RESTRUCTURE_DELETE ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int VERIFY (int) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_pool_get (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 char const* apr_pstrdup (int *,char const*) ;
 TYPE_1__* svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,TYPE_1__*) ;
 char* svn_relpath_skip_ancestor (char const*,char const*) ;

__attribute__((used)) static svn_error_t *
delete_subtree(apr_hash_t *changes,
               const char *relpath,
               svn_revnum_t deleting_rev)
{
  apr_pool_t *changes_pool = apr_hash_pool_get(changes);
  apr_pool_t *scratch_pool = changes_pool;
  change_node_t *change = svn_hash_gets(changes, relpath);

  if (change)
    {




       VERIFY(change->action != RESTRUCTURE_DELETE);
       if (change->action == RESTRUCTURE_ADD && !change->deleting)
         {
           svn_hash_sets(changes, relpath, ((void*)0));
           change = ((void*)0);
         }
       else
         {
           change->action = RESTRUCTURE_DELETE;
         }
    }
  else
    {

      change = apr_pcalloc(changes_pool, sizeof(*change));
      change->action = RESTRUCTURE_DELETE;
      change->changing_rev = SVN_INVALID_REVNUM;
      change->deleting = TRUE;
      change->deleting_rev = deleting_rev;

      svn_hash_sets(changes, apr_pstrdup(changes_pool, relpath), change);
    }


  {
    apr_hash_index_t *hi;

    for (hi = apr_hash_first(scratch_pool, changes);
         hi; hi = apr_hash_next(hi))
      {
        const char *this_relpath = apr_hash_this_key(hi);
        const char *r = svn_relpath_skip_ancestor(relpath, this_relpath);

        if (r && r[0])
          {
            svn_hash_sets(changes, this_relpath, ((void*)0));
          }
      }
  }

  return SVN_NO_ERROR;
}
