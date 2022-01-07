
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int svn_error_clear (int *) ;
 int * svn_stringbuf_from_file2 (int **,char const*,int *) ;

__attribute__((used)) static svn_stringbuf_t *
read_file_contents(const char *filename, apr_pool_t *pool)
{
  svn_error_t *err;
  svn_stringbuf_t *buffer;

  err = svn_stringbuf_from_file2(&buffer, filename, pool);
  if (err)
    {
      svn_error_clear(err);
      return ((void*)0);
    }

  return buffer;
}
