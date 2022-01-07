
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_fs_hotcopy3 (char const*,char const*,int ,int ,int *,int *,int ,void*,int *) ;

svn_error_t *
svn_fs_hotcopy2(const char *src_path, const char *dest_path,
                svn_boolean_t clean, svn_boolean_t incremental,
                svn_cancel_func_t cancel_func, void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_fs_hotcopy3(src_path, dest_path, clean,
                                         incremental, ((void*)0), ((void*)0),
                                         cancel_func, cancel_baton,
                                         scratch_pool));
}
