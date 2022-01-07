
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_7__ {char* uuid; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_RA_DAV_RESPONSE_HEADER_BADNESS ;
 int * SVN_NO_ERROR ;
 int SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (TYPE_2__*) ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_ra_serf__discover_vcc (char const**,TYPE_2__*,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_serf__get_uuid(svn_ra_session_t *ra_session,
                      const char **uuid,
                      apr_pool_t *pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;

  if (!session->uuid)
    {
      const char *vcc_url;




      SVN_ERR_ASSERT(! SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(session));



      SVN_ERR(svn_ra_serf__discover_vcc(&vcc_url, session, pool));
      if (!session->uuid)
        {
          return svn_error_create(SVN_ERR_RA_DAV_RESPONSE_HEADER_BADNESS, ((void*)0),
                                  _("The UUID property was not found on the "
                                    "resource or any of its parents"));
        }
    }

  *uuid = session->uuid;

  return SVN_NO_ERROR;
}
