
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int format; int path; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_REPOS_UNSUPPORTED_VERSION ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS__FORMAT ;
 int SVN_REPOS__FORMAT_NUMBER ;
 int SVN_REPOS__FORMAT_NUMBER_LEGACY ;
 int _ (char*) ;
 char* svn_dirent_join (int ,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,int,int,int) ;
 int svn_io_read_version_file (int*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
check_repos_format(svn_repos_t *repos,
                   apr_pool_t *pool)
{
  int format;
  const char *format_path;

  format_path = svn_dirent_join(repos->path, SVN_REPOS__FORMAT, pool);
  SVN_ERR(svn_io_read_version_file(&format, format_path, pool));

  if (format != SVN_REPOS__FORMAT_NUMBER &&
      format != SVN_REPOS__FORMAT_NUMBER_LEGACY)
    {
      return svn_error_createf
        (SVN_ERR_REPOS_UNSUPPORTED_VERSION, ((void*)0),
         _("Expected repository format '%d' or '%d'; found format '%d'"),
         SVN_REPOS__FORMAT_NUMBER_LEGACY, SVN_REPOS__FORMAT_NUMBER,
         format);
    }

  repos->format = format;

  return SVN_NO_ERROR;
}
