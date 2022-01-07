
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrndup (int *,char const*,size_t) ;
 int shelf_name_decode (char**,char*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static svn_error_t *
shelf_name_from_filename(char **name,
                         const char *filename,
                         apr_pool_t *result_pool)
{
  size_t len = strlen(filename);

  if (len > 6 && strcmp(filename + len - 6, ".patch") == 0)
    {
      char *codename = apr_pstrndup(result_pool, filename, len - 6);
      SVN_ERR(shelf_name_decode(name, codename, result_pool));
    }
  return SVN_NO_ERROR;
}
