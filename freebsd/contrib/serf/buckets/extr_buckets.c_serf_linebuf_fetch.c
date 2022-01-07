
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; size_t used; int * line; } ;
typedef TYPE_1__ serf_linebuf_t ;
typedef int serf_bucket_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;


 scalar_t__ APR_EAGAIN ;
 scalar_t__ APR_EGENERAL ;
 scalar_t__ APR_STATUS_IS_EOF (scalar_t__) ;
 scalar_t__ SERF_BUCKET_READ_ERROR (scalar_t__) ;
 scalar_t__ SERF_LINEBUF_CRLF_SPLIT ;
 scalar_t__ SERF_LINEBUF_EMPTY ;
 scalar_t__ SERF_LINEBUF_PARTIAL ;
 scalar_t__ SERF_LINEBUF_READY ;
 int SERF_NEWLINE_CRLF ;
 int SERF_NEWLINE_CRLF_SPLIT ;
 int SERF_NEWLINE_NONE ;
 int memcpy (int *,char const*,int) ;
 scalar_t__ serf_bucket_peek (int *,char const**,int*) ;
 int serf_bucket_read (int *,int,char const**,int*) ;
 scalar_t__ serf_bucket_readline (int *,int,int*,char const**,int*) ;

apr_status_t serf_linebuf_fetch(
    serf_linebuf_t *linebuf,
    serf_bucket_t *bucket,
    int acceptable)
{



    if (linebuf->state == SERF_LINEBUF_READY) {
        linebuf->state = SERF_LINEBUF_EMPTY;




        linebuf->used = 0;
    }

    while (1) {
        apr_status_t status;
        const char *data;
        apr_size_t len;

        if (linebuf->state == SERF_LINEBUF_CRLF_SPLIT) {






            status = serf_bucket_peek(bucket, &data, &len);
            if (SERF_BUCKET_READ_ERROR(status))
                return status;

            if (len > 0) {
                if (*data == '\n') {





                    (void) serf_bucket_read(bucket, 1, &data, &len);
                }
                linebuf->state = SERF_LINEBUF_READY;
            } else {

                return APR_EAGAIN;
            }
        }
        else {
            int found;

            status = serf_bucket_readline(bucket, acceptable, &found,
                                          &data, &len);
            if (SERF_BUCKET_READ_ERROR(status)) {
                return status;
            }



            if (APR_STATUS_IS_EOF(status) && len == 0) {
         return status;
            }
            if (linebuf->used + len > sizeof(linebuf->line)) {

                return APR_EGENERAL;
            }
            if (found == SERF_NEWLINE_NONE) {
                linebuf->state = SERF_LINEBUF_PARTIAL;
            }
            else if (found == SERF_NEWLINE_CRLF_SPLIT) {
                linebuf->state = SERF_LINEBUF_CRLF_SPLIT;


                --len;
            }
            else {




                len -= 1 + (found == SERF_NEWLINE_CRLF);

                linebuf->state = SERF_LINEBUF_READY;
            }




            memcpy(&linebuf->line[linebuf->used], data, len);
            linebuf->used += len;
        }





        if (status || linebuf->state == SERF_LINEBUF_READY)
            return status;




    }

}
