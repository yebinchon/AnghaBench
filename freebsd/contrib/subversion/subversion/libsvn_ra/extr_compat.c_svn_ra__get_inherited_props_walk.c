
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_19__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_20__ {int * prop_hash; int path_or_url; } ;
typedef TYPE_3__ svn_prop_inherited_item_t ;
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int apr_array_header_t ;
struct TYPE_18__ {TYPE_4__* (* get_dir ) (TYPE_2__*,int *,int *,int **,char*,int ,int ,int *) ;} ;


 int SVN_DIRENT_ALL ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_RA_DAV_FORBIDDEN ;
 scalar_t__ SVN_ERR_RA_NOT_AUTHORIZED ;
 TYPE_4__* SVN_NO_ERROR ;
 int * apr_array_make (int *,int,int) ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int *,char const*,int ,int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_hash_this_key_len (int *) ;
 int * apr_hash_this_val (int *) ;
 TYPE_3__* apr_palloc (int *,int) ;
 char* apr_pstrdup (int *,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_4__* stub1 (TYPE_2__*,int *,int *,int **,char*,int ,int ,int *) ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_error_trace (TYPE_4__*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;
 int svn_ra_get_repos_root2 (TYPE_2__*,char const**,int *) ;
 int svn_ra_get_session_url (TYPE_2__*,char const**,int *) ;
 int svn_ra_reparent (TYPE_2__*,char const*,int *) ;
 int svn_sort__array_insert (int *,TYPE_3__**,int ) ;
 int * svn_string_dup (int *,int *) ;
 char* svn_uri_dirname (char const*,int *) ;
 int svn_uri_skip_ancestor (char const*,char const*,int *) ;

svn_error_t *
svn_ra__get_inherited_props_walk(svn_ra_session_t *session,
                                 const char *path,
                                 svn_revnum_t revision,
                                 apr_array_header_t **inherited_props,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  const char *repos_root_url;
  const char *session_url;
  const char *parent_url;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  *inherited_props =
    apr_array_make(result_pool, 1, sizeof(svn_prop_inherited_item_t *));



  SVN_ERR(svn_ra_get_repos_root2(session, &repos_root_url, scratch_pool));
  SVN_ERR(svn_ra_get_session_url(session, &session_url, scratch_pool));
  parent_url = session_url;

  while (strcmp(repos_root_url, parent_url))
    {
      apr_hash_index_t *hi;
      apr_hash_t *parent_props;
      apr_hash_t *final_hash = apr_hash_make(result_pool);
      svn_error_t *err;

      svn_pool_clear(iterpool);
      parent_url = svn_uri_dirname(parent_url, scratch_pool);
      SVN_ERR(svn_ra_reparent(session, parent_url, iterpool));
      err = session->vtable->get_dir(session, ((void*)0), ((void*)0),
                                     &parent_props, "",
                                     revision, SVN_DIRENT_ALL,
                                     iterpool);



      if (err)
        {
          if ((err->apr_err == SVN_ERR_RA_NOT_AUTHORIZED)
              || (err->apr_err == SVN_ERR_RA_DAV_FORBIDDEN))
            {
              svn_error_clear(err);
              continue;
            }
          else
            {
              return svn_error_trace(err);
            }
        }

      for (hi = apr_hash_first(scratch_pool, parent_props);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *name = apr_hash_this_key(hi);
          apr_ssize_t klen = apr_hash_this_key_len(hi);
          svn_string_t *value = apr_hash_this_val(hi);

          if (svn_property_kind2(name) == svn_prop_regular_kind)
            {
              name = apr_pstrdup(result_pool, name);
              value = svn_string_dup(value, result_pool);
              apr_hash_set(final_hash, name, klen, value);
            }
        }

      if (apr_hash_count(final_hash))
        {
          svn_prop_inherited_item_t *new_iprop =
            apr_palloc(result_pool, sizeof(*new_iprop));
          new_iprop->path_or_url = svn_uri_skip_ancestor(repos_root_url,
                                                         parent_url,
                                                         result_pool);
          new_iprop->prop_hash = final_hash;
          svn_sort__array_insert(*inherited_props, &new_iprop, 0);
        }
    }


  SVN_ERR(svn_ra_reparent(session, session_url, scratch_pool));

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
