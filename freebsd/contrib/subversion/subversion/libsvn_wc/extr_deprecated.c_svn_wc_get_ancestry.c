
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int revision; int url; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,int ) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_node_unknown ;
 int svn_wc__adm_get_db (int *) ;
 int svn_wc__get_entry (TYPE_1__ const**,int ,char const*,int ,int ,int *,int *) ;

svn_error_t *
svn_wc_get_ancestry(char **url,
                    svn_revnum_t *rev,
                    const char *path,
                    svn_wc_adm_access_t *adm_access,
                    apr_pool_t *pool)
{
  const char *local_abspath;
  const svn_wc_entry_t *entry;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));

  SVN_ERR(svn_wc__get_entry(&entry, svn_wc__adm_get_db(adm_access),
                            local_abspath, FALSE,
                            svn_node_unknown,
                            pool, pool));

  if (url)
    *url = apr_pstrdup(pool, entry->url);

  if (rev)
    *rev = entry->revision;

  return SVN_NO_ERROR;
}
