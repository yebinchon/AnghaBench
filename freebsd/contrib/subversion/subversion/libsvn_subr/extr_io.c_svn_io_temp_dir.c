
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,int ) ;
 int init_temp_dir ;
 int svn_atomic__init_once (int *,int ,int *,int *) ;
 int temp_dir ;
 int temp_dir_init_state ;

svn_error_t *
svn_io_temp_dir(const char **dir,
                apr_pool_t *pool)
{
  SVN_ERR(svn_atomic__init_once(&temp_dir_init_state,
                                init_temp_dir, ((void*)0), pool));

  *dir = apr_pstrdup(pool, temp_dir);

  return SVN_NO_ERROR;
}
