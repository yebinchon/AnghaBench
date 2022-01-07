
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int e_map; } ;
typedef TYPE_1__ svn_element__tree_t ;
typedef int svn_branch__state_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_branch__state_get_elements (int const*,TYPE_1__**,int *) ;
 int svn_eid__hash_this_key (int *) ;
 char* svn_element__tree_get_path_by_eid (TYPE_1__*,int,int *) ;
 int svn_error_clear (int ) ;

int
svn_branch__get_eid_by_path(const svn_branch__state_t *branch,
                            const char *path,
                            apr_pool_t *scratch_pool)
{
  svn_element__tree_t *elements;
  apr_hash_index_t *hi;




  svn_error_clear(svn_branch__state_get_elements(branch, &elements, scratch_pool));
  for (hi = apr_hash_first(scratch_pool, elements->e_map);
       hi; hi = apr_hash_next(hi))
    {
      int eid = svn_eid__hash_this_key(hi);
      const char *this_path = svn_element__tree_get_path_by_eid(elements, eid,
                                                                scratch_pool);

      if (! this_path)
        {

          continue;
        }
      if (strcmp(path, this_path) == 0)
        {
          return eid;
        }
    }

  return -1;
}
