
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_4__ {int name; int const* value; } ;
typedef TYPE_1__ svn_prop_t ;
typedef int svn_error_t ;
struct revision_baton {int * pool; int rev_offset; struct parse_baton* pb; } ;
struct parse_baton {int oldest_dumpstream_rev; int rev_map; int parent_dir; } ;
struct node_baton {int prop_changes; struct revision_baton* rb; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int _ (char*) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_error_quick_wrap (int *,int ) ;
 int svn_hash_sets (int ,int ,TYPE_1__*) ;
 int * svn_repos__adjust_mergeinfo_property (int **,int const*,int ,int ,int ,int ,int *,int *,int *,int *) ;
 int svn_repos__normalize_prop (int const**,int *,char const*,int const*,int *,int *) ;
 int svn_repos__validate_prop (char const*,int const*,int *) ;

__attribute__((used)) static svn_error_t *
set_node_property(void *baton,
                  const char *name,
                  const svn_string_t *value)
{
  struct node_baton *nb = baton;
  struct revision_baton *rb = nb->rb;
  struct parse_baton *pb = rb->pb;
  apr_pool_t *pool = nb->rb->pool;
  svn_prop_t *prop;

  if (value && strcmp(name, SVN_PROP_MERGEINFO) == 0)
    {
      svn_string_t *new_value;
      svn_error_t *err;

      err = svn_repos__adjust_mergeinfo_property(&new_value, value,
                                                 pb->parent_dir,
                                                 pb->rev_map,
                                                 pb->oldest_dumpstream_rev,
                                                 rb->rev_offset,
                                                 ((void*)0), ((void*)0),
                                                 pool, pool);
      if (err)
        {
          return svn_error_quick_wrap(err,
                                      _("Invalid svn:mergeinfo value"));
        }

      value = new_value;
    }

  SVN_ERR(svn_repos__normalize_prop(&value, ((void*)0), name, value, pool, pool));

  SVN_ERR(svn_repos__validate_prop(name, value, pool));

  prop = apr_palloc(nb->rb->pool, sizeof (*prop));
  prop->name = apr_pstrdup(pool, name);
  prop->value = value;
  svn_hash_sets(nb->prop_changes, prop->name, prop);

  return SVN_NO_ERROR;
}
