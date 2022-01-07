
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* abspath; } ;
typedef TYPE_1__ svn_client__merge_path_t ;
struct TYPE_8__ {int elt_size; int nelts; int elts; } ;
typedef TYPE_2__ apr_array_header_t ;


 TYPE_1__** bsearch (TYPE_1__**,int ,int ,int ,int ) ;
 int compare_merge_path_t_as_paths ;

__attribute__((used)) static svn_client__merge_path_t *
get_child_with_mergeinfo(const apr_array_header_t *children_with_mergeinfo,
                         const char *abspath)
{
  svn_client__merge_path_t merge_path;
  svn_client__merge_path_t *key;
  svn_client__merge_path_t **pchild;

  merge_path.abspath = abspath;
  key = &merge_path;
  pchild = bsearch(&key, children_with_mergeinfo->elts,
                   children_with_mergeinfo->nelts,
                   children_with_mergeinfo->elt_size,
                   compare_merge_path_t_as_paths);
  return pchild ? *pchild : ((void*)0);
}
