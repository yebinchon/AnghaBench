
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_error_trace (int ) ;
 int svn_fs_hotcopy3 (char const*,char const*,int ,int ,int *,int *,int *,int *,int *) ;

svn_error_t *
svn_fs_hotcopy_berkeley(const char *src_path, const char *dest_path,
                        svn_boolean_t clean_logs, apr_pool_t *pool)
{
  return svn_error_trace(svn_fs_hotcopy3(src_path, dest_path, clean_logs,
                                         FALSE, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         pool));
}
