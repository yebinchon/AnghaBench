
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* path; } ;
struct TYPE_7__ {TYPE_1__ repos_root; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (TYPE_2__*) ;
 int assert (int) ;
 char* svn_path_uri_decode (char const*,int *) ;
 int svn_ra_serf__discover_vcc (char const**,TYPE_2__*,int *) ;
 char* svn_urlpath__skip_ancestor (char const*,char const*) ;

svn_error_t *
svn_ra_serf__get_relative_path(const char **rel_path,
                               const char *orig_path,
                               svn_ra_serf__session_t *session,
                               apr_pool_t *pool)
{
  const char *decoded_root, *decoded_orig;

  if (! session->repos_root.path)
    {
      const char *vcc_url;



      assert(! SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(session));




      SVN_ERR(svn_ra_serf__discover_vcc(&vcc_url, session,
                                        pool));
    }

  decoded_root = svn_path_uri_decode(session->repos_root.path, pool);
  decoded_orig = svn_path_uri_decode(orig_path, pool);
  *rel_path = svn_urlpath__skip_ancestor(decoded_root, decoded_orig);
  SVN_ERR_ASSERT(*rel_path != ((void*)0));
  return SVN_NO_ERROR;
}
