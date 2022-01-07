
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 int svn_fs_change_node_prop (int *,char const*,char const*,int const*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
add_new_props(svn_fs_root_t *root,
              const char *fspath,
              apr_hash_t *props,
              apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_hash_index_t *hi;





  for (hi = apr_hash_first(scratch_pool, props); hi;
       hi = apr_hash_next(hi))
    {
      const char *name = apr_hash_this_key(hi);
      const svn_string_t *value = apr_hash_this_val(hi);

      svn_pool_clear(iterpool);

      SVN_ERR(svn_fs_change_node_prop(root, fspath, name, value, iterpool));
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
