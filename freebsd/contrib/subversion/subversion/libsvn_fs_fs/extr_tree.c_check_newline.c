
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_PATH_SYNTAX ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* strchr (char const*,char) ;
 int * svn_error_createf (int ,int *,int ,unsigned char,int ) ;
 int svn_path_illegal_path_escape (char const*,int *) ;

__attribute__((used)) static svn_error_t *
check_newline(const char *path, apr_pool_t *pool)
{
  char *c = strchr(path, '\n');

  if (c)
    return svn_error_createf(SVN_ERR_FS_PATH_SYNTAX, ((void*)0),
       _("Invalid control character '0x%02x' in path '%s'"),
       (unsigned char)*c, svn_path_illegal_path_escape(path, pool));

  return SVN_NO_ERROR;
}
