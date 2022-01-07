
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int apr_pool_t ;


 int * svn_diff_file_diff3_2 (int **,char const*,char const*,char const*,int ,int *) ;
 int svn_diff_file_options_create (int *) ;

svn_error_t *
svn_diff_file_diff3(svn_diff_t **diff,
                    const char *original,
                    const char *modified,
                    const char *latest,
                    apr_pool_t *pool)
{
  return svn_diff_file_diff3_2(diff, original, modified, latest,
                               svn_diff_file_options_create(pool), pool);
}
