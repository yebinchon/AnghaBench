
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {char* path; } ;
struct TYPE_7__ {TYPE_1__ session_url; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_baseline_info (char const**,int *,TYPE_2__*,int ,int *,int *) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_ra_serf__get_relative_path (char const**,char const*,TYPE_2__*,int *) ;

svn_error_t *
svn_ra_serf__get_stable_url(const char **stable_url,
                            svn_revnum_t *latest_revnum,
                            svn_ra_serf__session_t *session,
                            const char *url,
                            svn_revnum_t revision,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  const char *basecoll_url;
  const char *repos_relpath;
  svn_revnum_t revnum_used;


  if (! url)
    url = session->session_url.path;

  SVN_ERR(get_baseline_info(&basecoll_url, &revnum_used,
                            session, revision, scratch_pool, scratch_pool));
  SVN_ERR(svn_ra_serf__get_relative_path(&repos_relpath, url,
                                         session, scratch_pool));

  *stable_url = svn_path_url_add_component2(basecoll_url, repos_relpath,
                                            result_pool);
  if (latest_revnum)
    *latest_revnum = revnum_used;

  return SVN_NO_ERROR;
}
