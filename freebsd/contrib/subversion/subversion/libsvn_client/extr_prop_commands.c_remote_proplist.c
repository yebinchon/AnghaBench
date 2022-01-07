
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_proplist_receiver2_t ;
typedef scalar_t__ svn_prop_kind_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_3__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_dirent_t ;
typedef scalar_t__ svn_depth_t ;
typedef int * (* svn_cancel_func_t ) (void*) ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int apr_array_header_t ;


 scalar_t__ FALSE ;
 int SVN_DIRENT_KIND ;
 int SVN_ERR (int *) ;
 int SVN_ERR_NODE_UNKNOWN_KIND ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int *,char const*,int ,int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_hash_this_key_len (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 int * call_receiver (char const*,int *,int *,int ,void*,int *) ;
 int * svn_client__iprop_relpaths_to_urls (int *,char const*,int *,int *) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;
 int * svn_ra_get_dir2 (int *,int **,int *,int **,char const*,int ,int ,int *) ;
 int * svn_ra_get_file (int *,char const*,int ,int *,int *,int **,int *) ;
 int * svn_ra_get_inherited_props (int *,int **,char const*,int ,int *,int *) ;
 int * svn_ra_get_repos_root2 (int *,char const**,int *) ;
 char* svn_relpath_join (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
remote_proplist(const char *target_prefix,
                const char *target_relative,
                svn_node_kind_t kind,
                svn_revnum_t revnum,
                svn_ra_session_t *ra_session,
                svn_boolean_t get_explicit_props,
                svn_boolean_t get_target_inherited_props,
                svn_depth_t depth,
                svn_proplist_receiver2_t receiver,
                void *receiver_baton,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  apr_hash_t *dirents;
  apr_hash_t *prop_hash = ((void*)0);
  apr_hash_index_t *hi;
  const char *target_full_url =
    svn_path_url_add_component2(target_prefix, target_relative, scratch_pool);
  apr_array_header_t *inherited_props;




  if (kind == svn_node_dir)
    {
      SVN_ERR(svn_ra_get_dir2(ra_session,
                              (depth > svn_depth_empty) ? &dirents : ((void*)0),
                              ((void*)0), &prop_hash, target_relative, revnum,
                              SVN_DIRENT_KIND, scratch_pool));
    }
  else if (kind == svn_node_file)
    {
      SVN_ERR(svn_ra_get_file(ra_session, target_relative, revnum,
                              ((void*)0), ((void*)0), &prop_hash, scratch_pool));
    }
  else
    {
      return svn_error_createf(SVN_ERR_NODE_UNKNOWN_KIND, ((void*)0),
                               _("Unknown node kind for '%s'"),
                               target_full_url);
    }

  if (get_target_inherited_props)
    {
      const char *repos_root_url;

      SVN_ERR(svn_ra_get_inherited_props(ra_session, &inherited_props,
                                         target_relative, revnum,
                                         scratch_pool, scratch_pool));
      SVN_ERR(svn_ra_get_repos_root2(ra_session, &repos_root_url,
                                     scratch_pool));
      SVN_ERR(svn_client__iprop_relpaths_to_urls(inherited_props,
                                                 repos_root_url,
                                                 scratch_pool,
                                                 scratch_pool));
    }
  else
    {
      inherited_props = ((void*)0);
    }

  if (!get_explicit_props)
    prop_hash = ((void*)0);
  else
    {




      for (hi = apr_hash_first(scratch_pool, prop_hash);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *name = apr_hash_this_key(hi);
          apr_ssize_t klen = apr_hash_this_key_len(hi);
          svn_prop_kind_t prop_kind;

          prop_kind = svn_property_kind2(name);

          if (prop_kind != svn_prop_regular_kind)
            {
              apr_hash_set(prop_hash, name, klen, ((void*)0));
            }
        }
    }

  SVN_ERR(call_receiver(target_full_url, prop_hash, inherited_props,
                        receiver, receiver_baton, scratch_pool));

  if (depth > svn_depth_empty
      && get_explicit_props
      && (kind == svn_node_dir) && (apr_hash_count(dirents) > 0))
    {
      apr_pool_t *iterpool = svn_pool_create(scratch_pool);

      for (hi = apr_hash_first(scratch_pool, dirents);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *this_name = apr_hash_this_key(hi);
          svn_dirent_t *this_ent = apr_hash_this_val(hi);
          const char *new_target_relative;

          if (cancel_func)
            SVN_ERR(cancel_func(cancel_baton));

          svn_pool_clear(iterpool);

          new_target_relative = svn_relpath_join(target_relative,
                                                 this_name, iterpool);

          if (this_ent->kind == svn_node_file
              || depth > svn_depth_files)
            {
              svn_depth_t depth_below_here = depth;

              if (depth == svn_depth_immediates)
                depth_below_here = svn_depth_empty;

              SVN_ERR(remote_proplist(target_prefix,
                                      new_target_relative,
                                      this_ent->kind,
                                      revnum,
                                      ra_session,
                                      TRUE ,
                                      FALSE ,
                                      depth_below_here,
                                      receiver, receiver_baton,
                                      cancel_func, cancel_baton,
                                      iterpool));
            }
        }

      svn_pool_destroy(iterpool);
    }

  return SVN_NO_ERROR;
}
