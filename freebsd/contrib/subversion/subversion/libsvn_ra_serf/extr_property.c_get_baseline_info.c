
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_8__ {int blncache; int rev_root_stub; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (TYPE_1__*) ;
 char* apr_psprintf (int *,char*,int ,int ) ;
 int retrieve_baseline_info (int *,char const**,TYPE_1__*,char const*,int ,int *,int *) ;
 int svn_ra_serf__blncache_get_bc_url (char const**,int ,int ,int *) ;
 int svn_ra_serf__blncache_set (int ,int *,int ,char const*,int *) ;
 int svn_ra_serf__discover_vcc (char const**,TYPE_1__*,int *) ;
 int svn_ra_serf__v2_get_youngest_revnum (int *,TYPE_1__*,int *) ;
 int v1_get_youngest_revnum (int *,char const**,TYPE_1__*,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_baseline_info(const char **bc_url,
                  svn_revnum_t *revnum_used,
                  svn_ra_serf__session_t *session,
                  svn_revnum_t revision,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{



  if (SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(session))
    {
      if (SVN_IS_VALID_REVNUM(revision))
        {
          *revnum_used = revision;
        }
      else
        {
          SVN_ERR(svn_ra_serf__v2_get_youngest_revnum(
                    revnum_used, session, scratch_pool));
        }

      *bc_url = apr_psprintf(result_pool, "%s/%ld",
                             session->rev_root_stub, *revnum_used);
    }


  else
    {
      const char *vcc_url;

      SVN_ERR(svn_ra_serf__discover_vcc(&vcc_url, session, scratch_pool));

      if (SVN_IS_VALID_REVNUM(revision))
        {

          SVN_ERR(svn_ra_serf__blncache_get_bc_url(bc_url,
                                                   session->blncache,
                                                   revision, result_pool));
          if (!*bc_url)
            {
              SVN_ERR(retrieve_baseline_info(((void*)0), bc_url, session,
                                             vcc_url, revision,
                                             result_pool, scratch_pool));
              SVN_ERR(svn_ra_serf__blncache_set(session->blncache, ((void*)0),
                                                revision, *bc_url,
                                                scratch_pool));
            }

          *revnum_used = revision;
        }
      else
        {
          SVN_ERR(v1_get_youngest_revnum(revnum_used, bc_url,
                                         session, vcc_url,
                                         result_pool, scratch_pool));
        }
    }

  return SVN_NO_ERROR;
}
