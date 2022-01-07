
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int writing_started; struct TYPE_14__* next; int * resp_bkt; int acceptor_baton; int * (* acceptor ) (TYPE_2__*,int ,int ,int *) ;scalar_t__ req_bkt; } ;
typedef TYPE_2__ serf_request_t ;
struct TYPE_15__ {int dirty_conn; scalar_t__ completed_responses; scalar_t__ probable_keepalive_limit; TYPE_1__* ctx; int * requests_tail; TYPE_2__* requests; int stream; scalar_t__ async_responses; int pool; scalar_t__ stop_writing; } ;
typedef TYPE_3__ serf_connection_t ;
typedef int serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int dirty_pollset; } ;


 scalar_t__ APR_STATUS_IS_EAGAIN (int ) ;
 scalar_t__ APR_STATUS_IS_ECONNABORTED (int ) ;
 scalar_t__ APR_STATUS_IS_ECONNRESET (int ) ;
 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 int APR_SUCCESS ;
 int FALSE ;
 int SERF_ERROR_ABORTED_CONNECTION ;
 int SERF_ERROR_CLOSING ;
 int SERF_ERROR_REQUEST_LOST ;
 int apr_pool_clear (int *) ;
 int apr_pool_create (int **,int ) ;
 int apr_pool_destroy (int *) ;
 int destroy_request (TYPE_2__*) ;
 int handle_async_response (TYPE_3__*,int *) ;
 int handle_response (TYPE_2__*,int *) ;
 int is_conn_closing (int *) ;
 int prepare_conn_streams (TYPE_3__*,int *,int **,int **) ;
 scalar_t__ request_or_data_pending (TYPE_2__**,TYPE_3__*) ;
 int reset_connection (TYPE_3__*,int) ;
 int serf_bucket_peek (int ,char const**,int *) ;
 int * stub1 (TYPE_2__*,int ,int ,int *) ;

__attribute__((used)) static apr_status_t read_from_connection(serf_connection_t *conn)
{
    apr_status_t status;
    apr_pool_t *tmppool;
    int close_connection = FALSE;




    serf_request_t *request = conn->requests;



    if (conn->stop_writing) {
        conn->stop_writing = 0;
        conn->dirty_conn = 1;
        conn->ctx->dirty_pollset = 1;
    }



    if ((status = apr_pool_create(&tmppool, conn->pool)) != APR_SUCCESS)
        goto error;


    while (1) {
        serf_bucket_t *dummy1, *dummy2;

        apr_pool_clear(tmppool);


        status = prepare_conn_streams(conn, &conn->stream, &dummy1, &dummy2);
        if (status) {
            goto error;
        }


        if (conn->async_responses) {

            status = handle_async_response(conn, tmppool);
            if (APR_STATUS_IS_EAGAIN(status)) {
                status = APR_SUCCESS;
                goto error;
            }
            if (status) {
                goto error;
            }
            continue;
        }
        if (request->req_bkt || !request->writing_started) {
            const char *data;
            apr_size_t len;

            status = serf_bucket_peek(conn->stream, &data, &len);

            if (APR_STATUS_IS_EOF(status)) {
                reset_connection(conn, 1);
                status = APR_SUCCESS;
                goto error;
            }
            else if (APR_STATUS_IS_EAGAIN(status) && !len) {
                status = APR_SUCCESS;
                goto error;
            } else if (status && !APR_STATUS_IS_EAGAIN(status)) {

                goto error;
            }



        }




        if (request->resp_bkt == ((void*)0)) {
            request->resp_bkt = (*request->acceptor)(request, conn->stream,
                                                     request->acceptor_baton,
                                                     tmppool);
            apr_pool_clear(tmppool);
        }

        status = handle_response(request, tmppool);




        if (APR_STATUS_IS_ECONNRESET(status) ||
            APR_STATUS_IS_ECONNABORTED(status) ||
            status == SERF_ERROR_REQUEST_LOST) {



            if (conn->completed_responses) {
                reset_connection(conn, 1);
                status = APR_SUCCESS;
            }
            else if (status == SERF_ERROR_REQUEST_LOST) {
                status = SERF_ERROR_ABORTED_CONNECTION;
            }
            goto error;
        }




        if (APR_STATUS_IS_EAGAIN(status)) {




            if (request_or_data_pending(&request, conn) && !request) {
                conn->dirty_conn = 1;
                conn->ctx->dirty_pollset = 1;
            }
            status = APR_SUCCESS;
            goto error;
        }


        if (!status) {
            continue;
        }

        close_connection = is_conn_closing(request->resp_bkt);

        if (!APR_STATUS_IS_EOF(status) &&
            close_connection != SERF_ERROR_CLOSING) {



            goto error;
        }







        conn->requests = request->next;

        destroy_request(request);

        request = conn->requests;


        if (request == ((void*)0)) {
            conn->requests_tail = ((void*)0);
        }

        conn->completed_responses++;


        conn->dirty_conn = 1;
        conn->ctx->dirty_pollset = 1;


        if (close_connection == SERF_ERROR_CLOSING) {
            reset_connection(conn, 1);
            if (APR_STATUS_IS_EOF(status))
                status = APR_SUCCESS;
            goto error;
        }






        if (conn->probable_keepalive_limit &&
            conn->completed_responses > conn->probable_keepalive_limit) {
            conn->probable_keepalive_limit = 0;
        }





        if (request == ((void*)0) || !request->writing_started) {
            conn->dirty_conn = 1;
            conn->ctx->dirty_pollset = 1;
            status = APR_SUCCESS;
            goto error;
        }
    }

error:
    apr_pool_destroy(tmppool);
    return status;
}
