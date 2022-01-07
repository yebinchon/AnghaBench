
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int writing_started; int next; int * req_bkt; } ;
typedef TYPE_2__ serf_request_t ;
struct TYPE_14__ {scalar_t__ probable_keepalive_limit; scalar_t__ completed_requests; int dirty_conn; int max_outstanding_requests; scalar_t__ state; int completed_responses; scalar_t__ vec_len; int stop_writing; int requests; scalar_t__ async_responses; scalar_t__ hit_eof; TYPE_1__* ctx; int vec; int stream; } ;
typedef TYPE_3__ serf_connection_t ;
typedef int serf_bucket_t ;
typedef scalar_t__ apr_status_t ;
struct TYPE_12__ {int dirty_pollset; } ;


 scalar_t__ APR_STATUS_IS_EAGAIN (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_ECONNABORTED (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_ECONNRESET (scalar_t__) ;
 int APR_STATUS_IS_EOF (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_EPIPE (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 int IOV_MAX ;
 scalar_t__ SERF_CONN_CONNECTED ;
 scalar_t__ SERF_ERROR_WAIT_CONN ;
 int SERF_READ_ALL_AVAIL ;
 int destroy_request (TYPE_2__*) ;
 scalar_t__ no_more_writes (TYPE_3__*) ;
 scalar_t__ prepare_conn_streams (TYPE_3__*,int *,int **,int **) ;
 int request_or_data_pending (TYPE_2__**,TYPE_3__*) ;
 int serf_bucket_aggregate_append (int *,int *) ;
 int serf_bucket_destroy (int *) ;
 scalar_t__ serf_bucket_read_iovec (int *,int ,int ,int ,scalar_t__*) ;
 scalar_t__ setup_request (TYPE_2__*) ;
 scalar_t__ socket_writev (TYPE_3__*) ;

__attribute__((used)) static apr_status_t write_to_connection(serf_connection_t *conn)
{
    if (conn->probable_keepalive_limit &&
        conn->completed_requests > conn->probable_keepalive_limit) {

        conn->dirty_conn = 1;
        conn->ctx->dirty_pollset = 1;


        return APR_SUCCESS;
    }




    while (1) {
        serf_request_t *request;
        int stop_reading = 0;
        apr_status_t status;
        apr_status_t read_status;
        serf_bucket_t *ostreamt;
        serf_bucket_t *ostreamh;
        int max_outstanding_requests = conn->max_outstanding_requests;





        if (conn->state != SERF_CONN_CONNECTED)
            max_outstanding_requests = 1;

        if (max_outstanding_requests &&
            conn->completed_requests -
                conn->completed_responses >= max_outstanding_requests) {

            return APR_SUCCESS;
        }


        while (conn->vec_len) {
            status = socket_writev(conn);




            if (APR_STATUS_IS_EAGAIN(status))
                return APR_SUCCESS;
            if (APR_STATUS_IS_EPIPE(status) ||
                APR_STATUS_IS_ECONNRESET(status) ||
                APR_STATUS_IS_ECONNABORTED(status))
                return no_more_writes(conn);
            if (status)
                return status;
        }







        if (!request_or_data_pending(&request, conn)) {





            conn->dirty_conn = 1;
            conn->ctx->dirty_pollset = 1;
            return APR_SUCCESS;
        }

        status = prepare_conn_streams(conn, &conn->stream, &ostreamt, &ostreamh);
        if (status) {
            return status;
        }

        if (request) {
            if (request->req_bkt == ((void*)0)) {
                read_status = setup_request(request);
                if (read_status) {

                    return read_status;
                }
            }

            if (!request->writing_started) {
                request->writing_started = 1;
                serf_bucket_aggregate_append(ostreamt, request->req_bkt);
            }
        }






        read_status = serf_bucket_read_iovec(ostreamh,
                                             SERF_READ_ALL_AVAIL,
                                             IOV_MAX,
                                             conn->vec,
                                             &conn->vec_len);

        if (!conn->hit_eof) {
            if (APR_STATUS_IS_EAGAIN(read_status)) {

                stop_reading = 1;
            }
            else if (read_status == SERF_ERROR_WAIT_CONN) {
                conn->stop_writing = 1;
                conn->dirty_conn = 1;
                conn->ctx->dirty_pollset = 1;
            }
            else if (read_status && !APR_STATUS_IS_EOF(read_status)) {

                return read_status;
            }
        }



        if (conn->vec_len > 0) {
            status = socket_writev(conn);




            if (APR_STATUS_IS_EAGAIN(status))
                return APR_SUCCESS;
            if (APR_STATUS_IS_EPIPE(status))
                return no_more_writes(conn);
            if (APR_STATUS_IS_ECONNRESET(status) ||
                APR_STATUS_IS_ECONNABORTED(status)) {
                return no_more_writes(conn);
            }
            if (status)
                return status;
        }

        if (read_status == SERF_ERROR_WAIT_CONN) {
            stop_reading = 1;
            conn->stop_writing = 1;
            conn->dirty_conn = 1;
            conn->ctx->dirty_pollset = 1;
        }
        else if (request && read_status && conn->hit_eof &&
                 conn->vec_len == 0) {
            conn->hit_eof = 0;
            serf_bucket_destroy(request->req_bkt);
            request->req_bkt = ((void*)0);




            if (conn->async_responses) {
                conn->requests = request->next;
                destroy_request(request);
            }

            conn->completed_requests++;

            if (conn->probable_keepalive_limit &&
                conn->completed_requests > conn->probable_keepalive_limit) {

                stop_reading = 1;
            }
        }

        if (stop_reading) {
            return APR_SUCCESS;
        }
    }

}
