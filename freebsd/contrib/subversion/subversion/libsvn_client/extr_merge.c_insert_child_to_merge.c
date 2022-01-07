
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_client__merge_path_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int compare_merge_path_t_as_paths ;
 int * svn_client__merge_path_dup (int const*,int *) ;
 int svn_sort__array_insert (int *,int const**,int) ;
 int svn_sort__bsearch_lower_bound (int *,int const**,int ) ;

__attribute__((used)) static void
insert_child_to_merge(apr_array_header_t *children_with_mergeinfo,
                      const svn_client__merge_path_t *insert_element,
                      apr_pool_t *pool)
{
  int insert_index;
  const svn_client__merge_path_t *new_element;


  insert_index =
    svn_sort__bsearch_lower_bound(children_with_mergeinfo, &insert_element,
                                  compare_merge_path_t_as_paths);

  new_element = svn_client__merge_path_dup(insert_element, pool);
  svn_sort__array_insert(children_with_mergeinfo, &new_element, insert_index);
}
