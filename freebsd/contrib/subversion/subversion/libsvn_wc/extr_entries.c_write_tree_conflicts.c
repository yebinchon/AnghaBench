
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_2__ {char* data; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_val (int *) ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend (int *,int *) ;
 TYPE_1__* svn_skel__unparse (int *,int *) ;
 int svn_wc__serialize_conflict (int **,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
write_tree_conflicts(const char **conflict_data,
                     apr_hash_t *conflicts,
                     apr_pool_t *pool)
{
  svn_skel_t *skel = svn_skel__make_empty_list(pool);
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(pool, conflicts); hi; hi = apr_hash_next(hi))
    {
      svn_skel_t *c_skel;

      SVN_ERR(svn_wc__serialize_conflict(&c_skel, apr_hash_this_val(hi),
                                         pool, pool));
      svn_skel__prepend(c_skel, skel);
    }

  *conflict_data = svn_skel__unparse(skel, pool)->data;

  return SVN_NO_ERROR;
}
