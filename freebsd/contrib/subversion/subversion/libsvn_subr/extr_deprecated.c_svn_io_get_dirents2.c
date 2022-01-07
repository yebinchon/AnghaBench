
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int * svn_error_trace (int ) ;
 int svn_io_get_dirents3 (int **,char const*,int ,int *,int *) ;

svn_error_t *
svn_io_get_dirents2(apr_hash_t **dirents,
                    const char *path,
                    apr_pool_t *pool)
{


  return svn_error_trace(
            svn_io_get_dirents3(dirents, path, FALSE, pool, pool));
}
