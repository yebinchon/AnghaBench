
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_dirent_t ;
typedef int apr_array_header_t ;


 int compare_dirent_name ;
 int ** svn_sort__array_lookup (int *,char const*,int*,int ) ;

svn_fs_dirent_t *
svn_fs_fs__find_dir_entry(apr_array_header_t *entries,
                          const char *name,
                          int *hint)
{
  svn_fs_dirent_t **result
    = svn_sort__array_lookup(entries, name, hint, compare_dirent_name);
  return result ? *result : ((void*)0);
}
