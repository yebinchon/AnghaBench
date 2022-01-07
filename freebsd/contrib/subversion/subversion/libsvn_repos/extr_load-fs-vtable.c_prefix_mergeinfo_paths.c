
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_rangelist_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 char* svn_fspath__canonicalize (int ,int *) ;
 int svn_hash_sets (int *,char const*,int *) ;
 int svn_mergeinfo_parse (int **,int ,int *) ;
 int * svn_mergeinfo_to_string (TYPE_1__**,int *,int *) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 int svn_relpath_join (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
prefix_mergeinfo_paths(svn_string_t **mergeinfo_val,
                       const svn_string_t *mergeinfo_orig,
                       const char *parent_dir,
                       apr_pool_t *pool)
{
  apr_hash_t *prefixed_mergeinfo, *mergeinfo;
  apr_hash_index_t *hi;

  SVN_ERR(svn_mergeinfo_parse(&mergeinfo, mergeinfo_orig->data, pool));
  prefixed_mergeinfo = apr_hash_make(pool);
  for (hi = apr_hash_first(pool, mergeinfo); hi; hi = apr_hash_next(hi))
    {
      const char *merge_source = apr_hash_this_key(hi);
      svn_rangelist_t *rangelist = apr_hash_this_val(hi);
      const char *path;

      merge_source = svn_relpath_canonicalize(merge_source, pool);


      path = svn_fspath__canonicalize(svn_relpath_join(parent_dir,
                                                       merge_source, pool),
                                      pool);
      svn_hash_sets(prefixed_mergeinfo, path, rangelist);
    }
  return svn_mergeinfo_to_string(mergeinfo_val, prefixed_mergeinfo, pool);
}
