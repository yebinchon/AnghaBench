
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int minor; char* tag; scalar_t__ patch; int major; } ;
typedef TYPE_1__ svn_version_t ;
struct TYPE_8__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int format; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int SVN_VER_MAJOR ;
 TYPE_1__* apr_palloc (int *,int) ;

svn_error_t *
svn_fs_fs__info_format(int *fs_format,
                       svn_version_t **supports_version,
                       svn_fs_t *fs,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  *fs_format = ffd->format;
  *supports_version = apr_palloc(result_pool, sizeof(svn_version_t));

  (*supports_version)->major = SVN_VER_MAJOR;
  (*supports_version)->minor = 1;
  (*supports_version)->patch = 0;
  (*supports_version)->tag = "";

  switch (ffd->format)
    {
    case 1:
      break;
    case 2:
      (*supports_version)->minor = 4;
      break;
    case 3:
      (*supports_version)->minor = 5;
      break;
    case 4:
      (*supports_version)->minor = 6;
      break;
    case 6:
      (*supports_version)->minor = 8;
      break;
    case 7:
      (*supports_version)->minor = 9;
      break;
    case 8:
      (*supports_version)->minor = 10;
      break;





    }

  return SVN_NO_ERROR;
}
