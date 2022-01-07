
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_stringbuf_from_file2 (int **,char const*,int *) ;

svn_error_t *
svn_stringbuf_from_file(svn_stringbuf_t **result,
                        const char *filename,
                        apr_pool_t *pool)
{
  if (filename[0] == '-' && filename[1] == '\0')
    return svn_error_create
        (SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
         _("Reading from stdin is disallowed"));
  return svn_stringbuf_from_file2(result, filename, pool);
}
