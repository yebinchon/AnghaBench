
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct change_node {void* deleting; void* changing; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 void* SVN_INVALID_REVNUM ;
 int * apr_hash_pool_get (int *) ;
 struct change_node* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 struct change_node* svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,int ,struct change_node*) ;

__attribute__((used)) static struct change_node *
insert_change(const char *relpath,
              apr_hash_t *changes)
{
  apr_pool_t *result_pool;
  struct change_node *change;

  change = svn_hash_gets(changes, relpath);
  if (change != ((void*)0))
    return change;

  result_pool = apr_hash_pool_get(changes);


  change = apr_pcalloc(result_pool, sizeof(*change));
  change->changing = SVN_INVALID_REVNUM;
  change->deleting = SVN_INVALID_REVNUM;

  svn_hash_sets(changes, apr_pstrdup(result_pool, relpath), change);

  return change;
}
