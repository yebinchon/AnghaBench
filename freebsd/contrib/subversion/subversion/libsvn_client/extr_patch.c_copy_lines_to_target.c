
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ current_line; int write_baton; int (* write ) (int ,char const*,int ,int *) ;int eol_str; int eof; } ;
typedef TYPE_1__ target_content_t ;
typedef scalar_t__ svn_linenum_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,char const*,int ,int ) ;
 int readline (TYPE_1__*,char const**,int *,int *) ;
 int strlen (char const*) ;
 int stub1 (int ,char const*,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
copy_lines_to_target(target_content_t *content, svn_linenum_t line,
                     apr_pool_t *pool)
{
  apr_pool_t *iterpool;

  iterpool = svn_pool_create(pool);
  while ((content->current_line < line || line == 0) && ! content->eof)
    {
      const char *target_line;
      apr_size_t len;

      svn_pool_clear(iterpool);

      SVN_ERR(readline(content, &target_line, iterpool, iterpool));
      if (! content->eof)
        target_line = apr_pstrcat(iterpool, target_line, content->eol_str,
                                  SVN_VA_NULL);
      len = strlen(target_line);
      SVN_ERR(content->write(content->write_baton, target_line,
                             len, iterpool));
    }
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
