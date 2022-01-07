
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
struct TYPE_7__ {int * db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_string_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct propset_walk_baton {char const* propname; void* notify_baton; int notify_func; int force; int * db; int const* propval; } ;
typedef enum svn_prop_kind { ____Placeholder_svn_prop_kind } svn_prop_kind ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_BAD_PROP_KIND ;
 int SVN_ERR_WC_INVALID_SCHEDULE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int do_propset (int *,char const*,scalar_t__,char const*,int const*,int ,int ,void*,int *) ;
 int propset_walk_cb ;
 scalar_t__ svn_depth_empty ;
 char* svn_dirent_dirname (char const*,int *) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int ) ;
 int svn_hash_from_cstring_keys (int **,TYPE_2__ const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_prop_entry_kind ;
 int svn_prop_wc_kind ;
 int svn_property_kind2 (char const*) ;
 int svn_wc__db_read_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 int svn_wc__internal_changelist_match (int *,char const*,int *,int *) ;
 int svn_wc__internal_walk_children (int *,char const*,int ,TYPE_2__ const*,int ,struct propset_walk_baton*,scalar_t__,int ,void*,int *) ;
 int svn_wc__write_check (int *,char const*,int *) ;
 int wcprop_set (int *,char const*,char const*,int const*,int *) ;

svn_error_t *
svn_wc_prop_set4(svn_wc_context_t *wc_ctx,
                 const char *local_abspath,
                 const char *name,
                 const svn_string_t *value,
                 svn_depth_t depth,
                 svn_boolean_t skip_checks,
                 const apr_array_header_t *changelist_filter,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 svn_wc_notify_func2_t notify_func,
                 void *notify_baton,
                 apr_pool_t *scratch_pool)
{
  enum svn_prop_kind prop_kind = svn_property_kind2(name);
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_wc__db_t *db = wc_ctx->db;


  if (prop_kind == svn_prop_entry_kind)
    return svn_error_createf(SVN_ERR_BAD_PROP_KIND, ((void*)0),
                             _("Property '%s' is an entry property"), name);


  if (prop_kind == svn_prop_wc_kind)
    {
      SVN_ERR_ASSERT(depth == svn_depth_empty);
      return svn_error_trace(wcprop_set(wc_ctx->db, local_abspath,
                                        name, value, scratch_pool));
    }

  SVN_ERR(svn_wc__db_read_info(&status, &kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               wc_ctx->db, local_abspath,
                               scratch_pool, scratch_pool));

  if (status != svn_wc__db_status_normal
      && status != svn_wc__db_status_added
      && status != svn_wc__db_status_incomplete)
    {
      return svn_error_createf(SVN_ERR_WC_INVALID_SCHEDULE, ((void*)0),
                                  _("Can't set properties on '%s':"
                                  " invalid status for updating properties."),
                                  svn_dirent_local_style(local_abspath,
                                                         scratch_pool));
    }
  {
    const char *dir_abspath;

    if (kind == svn_node_dir)
      dir_abspath = local_abspath;
    else
      dir_abspath = svn_dirent_dirname(local_abspath, scratch_pool);


    SVN_ERR(svn_wc__write_check(db, dir_abspath, scratch_pool));
  }

  if (depth == svn_depth_empty || kind != svn_node_dir)
    {
      apr_hash_t *changelist_hash = ((void*)0);

      if (changelist_filter && changelist_filter->nelts)
        SVN_ERR(svn_hash_from_cstring_keys(&changelist_hash, changelist_filter,
                                           scratch_pool));

      if (!svn_wc__internal_changelist_match(wc_ctx->db, local_abspath,
                                             changelist_hash, scratch_pool))
        return SVN_NO_ERROR;

      SVN_ERR(do_propset(wc_ctx->db, local_abspath,
                         kind == svn_node_dir
                            ? svn_node_dir
                            : svn_node_file,
                         name, value, skip_checks,
                         notify_func, notify_baton, scratch_pool));

    }
  else
    {
      struct propset_walk_baton wb;

      wb.propname = name;
      wb.propval = value;
      wb.db = wc_ctx->db;
      wb.force = skip_checks;
      wb.notify_func = notify_func;
      wb.notify_baton = notify_baton;

      SVN_ERR(svn_wc__internal_walk_children(wc_ctx->db, local_abspath,
                                             FALSE, changelist_filter,
                                             propset_walk_cb, &wb,
                                             depth,
                                             cancel_func, cancel_baton,
                                             scratch_pool));
    }

  return SVN_NO_ERROR;
}
