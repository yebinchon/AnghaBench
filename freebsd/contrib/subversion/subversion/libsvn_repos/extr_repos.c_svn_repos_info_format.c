
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int minor; char* tag; scalar_t__ patch; int major; } ;
typedef TYPE_1__ svn_version_t ;
struct TYPE_7__ {int format; } ;
typedef TYPE_2__ svn_repos_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;


 int SVN_VER_MAJOR ;
 TYPE_1__* apr_palloc (int *,int) ;

svn_error_t *
svn_repos_info_format(int *repos_format,
                      svn_version_t **supports_version,
                      svn_repos_t *repos,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  *repos_format = repos->format;
  *supports_version = apr_palloc(result_pool, sizeof(svn_version_t));

  (*supports_version)->major = SVN_VER_MAJOR;
  (*supports_version)->minor = 0;
  (*supports_version)->patch = 0;
  (*supports_version)->tag = "";

  switch (repos->format)
    {
    case 128:
      break;
    case 129:
      (*supports_version)->minor = 4;
      break;





    }

  return SVN_NO_ERROR;
}
