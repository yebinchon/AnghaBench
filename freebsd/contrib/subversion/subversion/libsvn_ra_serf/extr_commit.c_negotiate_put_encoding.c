
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ using_compression; scalar_t__ supports_svndiff2; scalar_t__ supports_svndiff1; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;


 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int SVN_DELTA_COMPRESSION_LEVEL_NONE ;
 scalar_t__ svn_ra_serf__is_low_latency_connection (TYPE_1__*) ;
 scalar_t__ svn_tristate_true ;
 scalar_t__ svn_tristate_unknown ;

__attribute__((used)) static void
negotiate_put_encoding(int *svndiff_version_p,
                       int *svndiff_compression_level_p,
                       svn_ra_serf__session_t *session)
{
  int svndiff_version;
  int compression_level;

  if (session->using_compression == svn_tristate_unknown)
    {
      if (session->supports_svndiff2 &&
          svn_ra_serf__is_low_latency_connection(session))
        svndiff_version = 2;
      else if (session->supports_svndiff1)
        svndiff_version = 1;
      else if (session->supports_svndiff2)
        svndiff_version = 2;
      else
        svndiff_version = 0;
    }
  else if (session->using_compression == svn_tristate_true)
    {
      if (session->supports_svndiff1)
        svndiff_version = 1;
      else if (session->supports_svndiff2)
        svndiff_version = 2;
      else
        svndiff_version = 0;
    }
  else
    {
      svndiff_version = 0;
    }

  if (svndiff_version == 0)
    compression_level = SVN_DELTA_COMPRESSION_LEVEL_NONE;
  else
    compression_level = SVN_DELTA_COMPRESSION_LEVEL_DEFAULT;

  *svndiff_version_p = svndiff_version;
  *svndiff_compression_level_p = compression_level;
}
