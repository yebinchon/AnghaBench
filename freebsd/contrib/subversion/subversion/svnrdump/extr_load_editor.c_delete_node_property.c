
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int name; int * value; } ;
typedef TYPE_2__ svn_prop_t ;
typedef int svn_error_t ;
struct node_baton {int prop_changes; TYPE_1__* rb; } ;
typedef int apr_pool_t ;
struct TYPE_5__ {int * pool; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_hash_sets (int ,int ,TYPE_2__*) ;
 int svn_repos__validate_prop (char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
delete_node_property(void *baton,
                     const char *name)
{
  struct node_baton *nb = baton;
  apr_pool_t *pool = nb->rb->pool;
  svn_prop_t *prop;

  SVN_ERR(svn_repos__validate_prop(name, ((void*)0), pool));

  prop = apr_palloc(pool, sizeof (*prop));
  prop->name = apr_pstrdup(pool, name);
  prop->value = ((void*)0);
  svn_hash_sets(nb->prop_changes, prop->name, prop);

  return SVN_NO_ERROR;
}
