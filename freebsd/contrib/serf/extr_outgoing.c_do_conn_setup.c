
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ostream_head; int * ostream_tail; int pool; int setup_baton; int stream; int skt; scalar_t__ (* setup ) (int ,int *,int **,int ,int ) ;int allocator; } ;
typedef TYPE_1__ serf_connection_t ;
typedef int serf_bucket_t ;
typedef scalar_t__ apr_status_t ;


 int destroy_ostream (TYPE_1__*) ;
 int detect_eof ;
 int * serf__bucket_stream_create (int ,int ,TYPE_1__*) ;
 int serf_bucket_aggregate_append (int *,int *) ;
 int * serf_bucket_aggregate_create (int ) ;
 int serf_bucket_destroy (int *) ;
 scalar_t__ stub1 (int ,int *,int **,int ,int ) ;

__attribute__((used)) static apr_status_t do_conn_setup(serf_connection_t *conn)
{
    apr_status_t status;
    serf_bucket_t *ostream;

    if (conn->ostream_head == ((void*)0)) {
        conn->ostream_head = serf_bucket_aggregate_create(conn->allocator);
    }

    if (conn->ostream_tail == ((void*)0)) {
        conn->ostream_tail = serf__bucket_stream_create(conn->allocator,
                                                        detect_eof,
                                                        conn);
    }

    ostream = conn->ostream_tail;

    status = (*conn->setup)(conn->skt,
                            &conn->stream,
                            &ostream,
                            conn->setup_baton,
                            conn->pool);
    if (status) {

        serf_bucket_destroy(conn->ostream_tail);
        destroy_ostream(conn);
        return status;
    }

    serf_bucket_aggregate_append(conn->ostream_head,
                                 ostream);

    return status;
}
