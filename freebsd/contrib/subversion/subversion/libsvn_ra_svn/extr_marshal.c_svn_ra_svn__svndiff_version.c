
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;


 int SVN_RA_SVN_CAP_SVNDIFF1 ;
 int SVN_RA_SVN_CAP_SVNDIFF2_ACCEPTED ;
 scalar_t__ svn_ra_svn_compression_level (int *) ;
 scalar_t__ svn_ra_svn_has_capability (int *,int ) ;

int
svn_ra_svn__svndiff_version(svn_ra_svn_conn_t *conn)
{


  if (svn_ra_svn_compression_level(conn) <= 0)
    return 0;


  if (svn_ra_svn_has_capability(conn, SVN_RA_SVN_CAP_SVNDIFF2_ACCEPTED))
    return 2;
  if (svn_ra_svn_has_capability(conn, SVN_RA_SVN_CAP_SVNDIFF1))
    return 1;


  return 0;
}
