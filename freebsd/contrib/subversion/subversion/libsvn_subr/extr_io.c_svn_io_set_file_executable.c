
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * io_set_file_perms (char const*,int ,int ,int ,int ,int ,int *) ;

svn_error_t *
svn_io_set_file_executable(const char *path,
                           svn_boolean_t executable,
                           svn_boolean_t ignore_enoent,
                           apr_pool_t *pool)
{



  return io_set_file_perms(path, FALSE, FALSE, TRUE, executable,
                           ignore_enoent, pool);



}
