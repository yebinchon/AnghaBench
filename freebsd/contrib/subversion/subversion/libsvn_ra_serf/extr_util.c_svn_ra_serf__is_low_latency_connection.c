
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ conn_latency; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
typedef int svn_boolean_t ;


 scalar_t__ apr_time_from_msec (int) ;

svn_boolean_t
svn_ra_serf__is_low_latency_connection(svn_ra_serf__session_t *session)
{
  return session->conn_latency >= 0 &&
         session->conn_latency < apr_time_from_msec(5);
}
