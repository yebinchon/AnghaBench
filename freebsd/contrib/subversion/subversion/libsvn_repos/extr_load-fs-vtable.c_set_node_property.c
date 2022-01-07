
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_5__ {int warning_str; int warning; } ;
typedef TYPE_1__ svn_repos_notify_t ;
typedef int svn_error_t ;
struct revision_baton {int txn_root; int rev_offset; scalar_t__ skipped; struct parse_baton* pb; } ;
struct parse_baton {scalar_t__ validate_props; int notify_pool; int notify_baton; int (* notify_func ) (int ,TYPE_1__*,int ) ;int oldest_dumpstream_rev; int rev_map; int parent_dir; } ;
struct node_baton {int pool; int path; struct revision_baton* rb; } ;


 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int _ (char*) ;
 int * change_node_prop (int ,int ,char const*,int const*,scalar_t__,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int stub1 (int ,TYPE_1__*,int ) ;
 int svn_error_clear (int *) ;
 int * svn_error_quick_wrap (int *,int ) ;
 int svn_pool_clear (int ) ;
 int * svn_repos__adjust_mergeinfo_property (int **,int const*,int ,int ,int ,int ,int (*) (int ,TYPE_1__*,int ),int ,int ,int ) ;
 TYPE_1__* svn_repos_notify_create (int ,int ) ;
 int svn_repos_notify_warning ;
 int svn_repos_notify_warning_invalid_mergeinfo ;

__attribute__((used)) static svn_error_t *
set_node_property(void *baton,
                  const char *name,
                  const svn_string_t *value)
{
  struct node_baton *nb = baton;
  struct revision_baton *rb = nb->rb;
  struct parse_baton *pb = rb->pb;


  if (rb->skipped)
    return SVN_NO_ERROR;






  if (strcmp(name, SVN_PROP_MERGEINFO) == 0)
    {
      svn_string_t *new_value;
      svn_error_t *err;

      err = svn_repos__adjust_mergeinfo_property(&new_value, value,
                                                 pb->parent_dir,
                                                 pb->rev_map,
                                                 pb->oldest_dumpstream_rev,
                                                 rb->rev_offset,
                                                 pb->notify_func, pb->notify_baton,
                                                 nb->pool, pb->notify_pool);
      svn_pool_clear(pb->notify_pool);
      if (err)
        {
          if (pb->validate_props)
            {
              return svn_error_quick_wrap(
                       err,
                       _("Invalid svn:mergeinfo value"));
            }
          if (pb->notify_func)
            {
              svn_repos_notify_t *notify
                = svn_repos_notify_create(svn_repos_notify_warning,
                                          pb->notify_pool);

              notify->warning = svn_repos_notify_warning_invalid_mergeinfo;
              notify->warning_str = _("Invalid svn:mergeinfo value; "
                                      "leaving unchanged");
              pb->notify_func(pb->notify_baton, notify, pb->notify_pool);
              svn_pool_clear(pb->notify_pool);
            }
          svn_error_clear(err);
        }
      else
        {
          value = new_value;
        }
    }

  return change_node_prop(rb->txn_root, nb->path, name, value,
                          pb->validate_props, nb->pool);
}
