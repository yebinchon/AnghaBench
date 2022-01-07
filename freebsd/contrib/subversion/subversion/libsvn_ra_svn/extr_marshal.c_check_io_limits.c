
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_in; scalar_t__ current_in; scalar_t__ max_out; scalar_t__ current_out; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
typedef int svn_error_t ;


 int SVN_ERR_RA_SVN_REQUEST_SIZE ;
 int SVN_ERR_RA_SVN_RESPONSE_SIZE ;
 int * SVN_NO_ERROR ;
 int * svn_error_create (int ,int *,char*) ;

__attribute__((used)) static svn_error_t *
check_io_limits(svn_ra_svn_conn_t *conn)
{
  if (conn->max_in && (conn->current_in > conn->max_in))
    return svn_error_create(SVN_ERR_RA_SVN_REQUEST_SIZE, ((void*)0),
                            "The client request size exceeds the "
                            "configured limit");

  if (conn->max_out && (conn->current_out > conn->max_out))
    return svn_error_create(SVN_ERR_RA_SVN_RESPONSE_SIZE, ((void*)0),
                            "The server response size exceeds the "
                            "configured limit");

  return SVN_NO_ERROR;
}
