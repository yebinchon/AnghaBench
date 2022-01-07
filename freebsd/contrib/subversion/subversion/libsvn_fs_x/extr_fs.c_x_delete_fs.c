
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_error_trace (int ) ;
 int svn_io_remove_dir2 (char const*,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
x_delete_fs(const char *path,
            apr_pool_t *scratch_pool)
{

  return svn_error_trace(svn_io_remove_dir2(path, FALSE, ((void*)0), ((void*)0),
                                            scratch_pool));
}
