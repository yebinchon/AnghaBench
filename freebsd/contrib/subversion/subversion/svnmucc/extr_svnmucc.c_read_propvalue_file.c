
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_string_create_from_buf (int *,int *) ;
 int svn_stringbuf_from_file2 (int **,char const*,int *) ;

__attribute__((used)) static svn_error_t *
read_propvalue_file(const svn_string_t **value_p,
                    const char *filename,
                    apr_pool_t *pool)
{
  svn_stringbuf_t *value;
  apr_pool_t *scratch_pool = svn_pool_create(pool);

  SVN_ERR(svn_stringbuf_from_file2(&value, filename, scratch_pool));
  *value_p = svn_string_create_from_buf(value, pool);
  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
