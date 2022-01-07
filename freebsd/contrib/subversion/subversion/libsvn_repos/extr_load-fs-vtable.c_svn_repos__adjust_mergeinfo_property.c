
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char const* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_repos_notify_t ;
typedef int (* svn_repos_notify_func_t ) (void*,int *,int *) ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int prefix_mergeinfo_paths (TYPE_1__**,TYPE_1__*,char const*,int *) ;
 int renumber_mergeinfo_revs (TYPE_1__**,TYPE_1__*,int *,int ,int ,int *) ;
 int strlen (char const*) ;
 scalar_t__ strstr (char const*,char*) ;
 int * svn_repos_notify_create (int ,int *) ;
 int svn_repos_notify_load_normalized_mergeinfo ;
 int svn_subst_translate_cstring2 (char const*,char const**,char*,int ,int *,int ,int *) ;

svn_error_t *
svn_repos__adjust_mergeinfo_property(svn_string_t **new_value_p,
                                     const svn_string_t *old_value,
                                     const char *parent_dir,
                                     apr_hash_t *rev_map,
                                     svn_revnum_t oldest_dumpstream_rev,
                                     apr_int32_t older_revs_offset,
                                     svn_repos_notify_func_t notify_func,
                                     void *notify_baton,
                                     apr_pool_t *result_pool,
                                     apr_pool_t *scratch_pool)
{
  svn_string_t prop_val = *old_value;





  if (strstr(prop_val.data, "\r"))
    {
      const char *prop_eol_normalized;

      SVN_ERR(svn_subst_translate_cstring2(prop_val.data,
                                           &prop_eol_normalized,
                                           "\n",
                                           FALSE,
                                           ((void*)0),
                                           FALSE,
                                           result_pool));
      prop_val.data = prop_eol_normalized;
      prop_val.len = strlen(prop_eol_normalized);

      if (notify_func)
        {
          svn_repos_notify_t *notify
                  = svn_repos_notify_create(
                                svn_repos_notify_load_normalized_mergeinfo,
                                scratch_pool);

          notify_func(notify_baton, notify, scratch_pool);
        }
    }


  SVN_ERR(renumber_mergeinfo_revs(new_value_p, &prop_val,
                                  rev_map, oldest_dumpstream_rev,
                                  older_revs_offset,
                                  result_pool));

  if (parent_dir)
    {


      SVN_ERR(prefix_mergeinfo_paths(new_value_p, *new_value_p,
                                     parent_dir, result_pool));
    }

  return SVN_NO_ERROR;
}
