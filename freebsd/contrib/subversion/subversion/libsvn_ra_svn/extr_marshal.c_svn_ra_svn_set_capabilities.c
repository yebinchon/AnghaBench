
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int pool; } ;
typedef TYPE_1__ apr_array_header_t ;


 int * svn_error_trace (int ) ;
 int svn_ra_svn__set_capabilities (int *,int *) ;
 int * svn_ra_svn__to_private_array (TYPE_1__ const*,int ) ;

svn_error_t *
svn_ra_svn_set_capabilities(svn_ra_svn_conn_t *conn,
                            const apr_array_header_t *list)
{
  svn_ra_svn__list_t *internal
    = svn_ra_svn__to_private_array(list, list->pool);
  return svn_error_trace(svn_ra_svn__set_capabilities(conn, internal));
}
