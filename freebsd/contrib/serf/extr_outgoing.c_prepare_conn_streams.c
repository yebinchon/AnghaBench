
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; int * ssltunnel_ostream; int allocator; int skt; int * stream; int * ostream_head; int * ostream_tail; scalar_t__ connect_time; scalar_t__ latency; } ;
typedef TYPE_1__ serf_connection_t ;
typedef int serf_bucket_t ;
typedef scalar_t__ apr_status_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ SERF_CONN_CONNECTED ;
 scalar_t__ apr_time_now () ;
 scalar_t__ do_conn_setup (TYPE_1__*) ;
 int * serf_bucket_socket_create (int ,int ) ;

__attribute__((used)) static apr_status_t prepare_conn_streams(serf_connection_t *conn,
                                         serf_bucket_t **istream,
                                         serf_bucket_t **ostreamt,
                                         serf_bucket_t **ostreamh)
{
    apr_status_t status;

    if (conn->stream == ((void*)0)) {
        conn->latency = apr_time_now() - conn->connect_time;
    }


    if (conn->state == SERF_CONN_CONNECTED) {



        if (conn->stream == ((void*)0)) {
            status = do_conn_setup(conn);
            if (status) {
                return status;
            }
        }
        *ostreamt = conn->ostream_tail;
        *ostreamh = conn->ostream_head;
        *istream = conn->stream;
    } else {


        if (conn->stream == ((void*)0)) {
            *istream = serf_bucket_socket_create(conn->skt,
                                                 conn->allocator);
        }



        *ostreamt = *ostreamh = conn->ssltunnel_ostream;
    }

    return APR_SUCCESS;
}
