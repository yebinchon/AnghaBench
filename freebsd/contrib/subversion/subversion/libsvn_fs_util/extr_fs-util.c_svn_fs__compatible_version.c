
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* tag; scalar_t__ patch; } ;
typedef TYPE_1__ svn_version_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_9__ {int major; int minor; } ;


 int SVN_ERR (int ) ;
 int SVN_FS_CONFIG_COMPATIBLE_VERSION ;
 int SVN_FS_CONFIG_PRE_1_4_COMPATIBLE ;
 int SVN_FS_CONFIG_PRE_1_5_COMPATIBLE ;
 int SVN_FS_CONFIG_PRE_1_6_COMPATIBLE ;
 int SVN_FS_CONFIG_PRE_1_8_COMPATIBLE ;
 int * SVN_NO_ERROR ;
 int add_compatility (TYPE_1__*,int,int) ;
 TYPE_1__* apr_pmemdup (int *,TYPE_3__*,int) ;
 char* svn_hash_gets (int *,int ) ;
 TYPE_3__* svn_subr_version () ;
 int svn_version__parse_version_string (TYPE_1__**,char const*,int *) ;

svn_error_t *
svn_fs__compatible_version(svn_version_t **compatible_version,
                           apr_hash_t *config,
                           apr_pool_t *pool)
{
  svn_version_t *version;
  const char *compatible;




  compatible = svn_hash_gets(config, SVN_FS_CONFIG_COMPATIBLE_VERSION);
  if (compatible)
    {
      SVN_ERR(svn_version__parse_version_string(&version,
                                                compatible, pool));
      add_compatility(version,
                      svn_subr_version()->major,
                      svn_subr_version()->minor);
    }
  else
    {
      version = apr_pmemdup(pool, svn_subr_version(), sizeof(*version));
    }



  if (svn_hash_gets(config, SVN_FS_CONFIG_PRE_1_4_COMPATIBLE))
    add_compatility(version, 1, 3);
  else if (svn_hash_gets(config, SVN_FS_CONFIG_PRE_1_5_COMPATIBLE))
    add_compatility(version, 1, 4);
  else if (svn_hash_gets(config, SVN_FS_CONFIG_PRE_1_6_COMPATIBLE))
    add_compatility(version, 1, 5);
  else if (svn_hash_gets(config, SVN_FS_CONFIG_PRE_1_8_COMPATIBLE))
    add_compatility(version, 1, 7);



  version->patch = 0;
  version->tag = "";


  *compatible_version = version;
  return SVN_NO_ERROR;
}
