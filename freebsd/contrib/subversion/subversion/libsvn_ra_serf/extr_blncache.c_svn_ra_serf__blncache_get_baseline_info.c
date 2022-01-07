
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {int baseline_info; } ;
typedef TYPE_1__ svn_ra_serf__blncache_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int revision; int bc_url; } ;
typedef TYPE_2__ baseline_info_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,int ) ;
 TYPE_2__* svn_hash_gets (int ,char const*) ;

svn_error_t *
svn_ra_serf__blncache_get_baseline_info(const char **bc_url_p,
                                        svn_revnum_t *revision_p,
                                        svn_ra_serf__blncache_t *blncache,
                                        const char *baseline_url,
                                        apr_pool_t *pool)
{
  baseline_info_t *info = svn_hash_gets(blncache->baseline_info, baseline_url);
  if (info)
    {
      *bc_url_p = apr_pstrdup(pool, info->bc_url);
      *revision_p = info->revision;
    }
  else
    {
      *bc_url_p = ((void*)0);
      *revision_p = SVN_INVALID_REVNUM;
    }

  return SVN_NO_ERROR;
}
