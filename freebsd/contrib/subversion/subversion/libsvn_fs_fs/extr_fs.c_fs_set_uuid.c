
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_fs_fs__set_uuid (int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
fs_set_uuid(svn_fs_t *fs,
            const char *uuid,
            apr_pool_t *pool)
{


  return svn_error_trace(svn_fs_fs__set_uuid(fs, uuid, ((void*)0), pool));
}
