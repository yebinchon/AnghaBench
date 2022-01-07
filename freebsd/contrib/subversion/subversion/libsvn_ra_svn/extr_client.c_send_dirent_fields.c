
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int SVN_DIRENT_CREATED_REV ;
 int SVN_DIRENT_HAS_PROPS ;
 int SVN_DIRENT_KIND ;
 int SVN_DIRENT_LAST_AUTHOR ;
 int SVN_DIRENT_SIZE ;
 int SVN_DIRENT_TIME ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_RA_SVN_DIRENT_CREATED_REV ;
 int SVN_RA_SVN_DIRENT_HAS_PROPS ;
 int SVN_RA_SVN_DIRENT_KIND ;
 int SVN_RA_SVN_DIRENT_LAST_AUTHOR ;
 int SVN_RA_SVN_DIRENT_SIZE ;
 int SVN_RA_SVN_DIRENT_TIME ;
 int svn_ra_svn__write_word (int *,int *,int ) ;

__attribute__((used)) static svn_error_t *
send_dirent_fields(svn_ra_svn_conn_t *conn,
                   apr_uint32_t dirent_fields,
                   apr_pool_t *scratch_pool)
{
  if (dirent_fields & SVN_DIRENT_KIND)
    SVN_ERR(svn_ra_svn__write_word(conn, scratch_pool,
                                   SVN_RA_SVN_DIRENT_KIND));
  if (dirent_fields & SVN_DIRENT_SIZE)
    SVN_ERR(svn_ra_svn__write_word(conn, scratch_pool,
                                   SVN_RA_SVN_DIRENT_SIZE));
  if (dirent_fields & SVN_DIRENT_HAS_PROPS)
    SVN_ERR(svn_ra_svn__write_word(conn, scratch_pool,
                                   SVN_RA_SVN_DIRENT_HAS_PROPS));
  if (dirent_fields & SVN_DIRENT_CREATED_REV)
    SVN_ERR(svn_ra_svn__write_word(conn, scratch_pool,
                                   SVN_RA_SVN_DIRENT_CREATED_REV));
  if (dirent_fields & SVN_DIRENT_TIME)
    SVN_ERR(svn_ra_svn__write_word(conn, scratch_pool,
                                   SVN_RA_SVN_DIRENT_TIME));
  if (dirent_fields & SVN_DIRENT_LAST_AUTHOR)
    SVN_ERR(svn_ra_svn__write_word(conn, scratch_pool,
                                   SVN_RA_SVN_DIRENT_LAST_AUTHOR));

  return SVN_NO_ERROR;
}
