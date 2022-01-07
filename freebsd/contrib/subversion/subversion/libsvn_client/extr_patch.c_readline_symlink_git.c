
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int readline_symlink (void*,TYPE_1__**,char const**,int *,int *,int *) ;
 int strncmp (int ,char*,int) ;
 int svn_stringbuf_remove (TYPE_1__*,int ,int) ;

__attribute__((used)) static svn_error_t *
readline_symlink_git(void *baton, svn_stringbuf_t **line, const char **eol_str,
                     svn_boolean_t *eof, apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  SVN_ERR(readline_symlink(baton, line, eol_str, eof,
                           result_pool, scratch_pool));

  if (*line && (*line)->len > 5 && !strncmp((*line)->data, "link ", 5))
    svn_stringbuf_remove(*line, 0, 5);

  return SVN_NO_ERROR;
}
