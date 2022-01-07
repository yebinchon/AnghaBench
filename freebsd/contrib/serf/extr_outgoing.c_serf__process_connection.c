
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int seen_in_pollset; scalar_t__ completed_requests; TYPE_1__* address; int skt; int probable_keepalive_limit; scalar_t__ completed_responses; } ;
typedef TYPE_2__ serf_connection_t ;
typedef int error ;
typedef int apr_status_t ;
typedef int apr_socklen_t ;
typedef int apr_os_sock_t ;
typedef int apr_int16_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;


 int APR_EGENERAL ;
 int APR_FROM_OS_ERROR (int) ;
 int APR_POLLERR ;
 int APR_POLLHUP ;
 int APR_POLLIN ;
 int APR_POLLOUT ;
 scalar_t__ APR_STATUS_IS_ECONNREFUSED (int ) ;
 scalar_t__ APR_STATUS_IS_ENETUNREACH (int ) ;
 scalar_t__ APR_STATUS_IS_TIMEUP (int ) ;
 int APR_SUCCESS ;
 int SERF_ERROR_ABORTED_CONNECTION ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int apr_os_sock_get (int *,int ) ;
 int getsockopt (int ,int ,int ,char*,int*) ;
 int read_from_connection (TYPE_2__*) ;
 int reset_connection (TYPE_2__*,int) ;
 int write_to_connection (TYPE_2__*) ;

apr_status_t serf__process_connection(serf_connection_t *conn,
                                      apr_int16_t events)
{
    apr_status_t status;





    if ((events & APR_POLLIN) != 0) {
        if ((status = read_from_connection(conn)) != APR_SUCCESS)
            return status;




        if ((conn->seen_in_pollset & APR_POLLHUP) != 0) {
            return APR_SUCCESS;
        }
    }
    if ((events & APR_POLLHUP) != 0) {





        if (conn->completed_responses) {
            return reset_connection(conn, 1);
        }
        return SERF_ERROR_ABORTED_CONNECTION;
    }
    if ((events & APR_POLLERR) != 0) {







        if (conn->completed_requests && !conn->probable_keepalive_limit) {
            return reset_connection(conn, 1);
        }
        return APR_EGENERAL;
    }
    if ((events & APR_POLLOUT) != 0) {
        if ((status = write_to_connection(conn)) != APR_SUCCESS)
            return status;
    }
    return APR_SUCCESS;
}
