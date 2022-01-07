
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ file; } ;
typedef TYPE_1__ svn_ra_serf__request_body_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_close (scalar_t__,int *) ;

svn_error_t *
svn_ra_serf__request_body_cleanup(svn_ra_serf__request_body_t *body,
                                  apr_pool_t *scratch_pool)
{
  if (body->file)
    SVN_ERR(svn_io_file_close(body->file, scratch_pool));

  return SVN_NO_ERROR;
}
