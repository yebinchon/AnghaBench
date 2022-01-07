
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* report; scalar_t__ spillbuf; int inner_handler_baton; TYPE_3__* (* inner_handler ) (int *,int *,int ,int *) ;} ;
typedef TYPE_2__ update_delay_baton_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef void* svn_boolean_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef scalar_t__ apr_status_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {scalar_t__ num_active_fetches; scalar_t__ num_active_propfinds; void* report_received; int pool; scalar_t__ send_all_mode; } ;


 scalar_t__ APR_STATUS_IS_EAGAIN (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_EOF (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 void* FALSE ;
 int PARSE_CHUNK_SIZE ;
 scalar_t__ REQUEST_COUNT_TO_RESUME ;
 scalar_t__ SERF_BUCKET_READ_ERROR (scalar_t__) ;
 int SPILLBUF_BLOCKSIZE ;
 int SPILLBUF_MAXBUFFSIZE ;
 int SVN_ERR (int ) ;
 TYPE_3__* SVN_NO_ERROR ;
 void* TRUE ;
 TYPE_3__* process_buffer (TYPE_2__*,int *,char const*,scalar_t__,void*,int ,int *) ;
 scalar_t__ serf_bucket_read (int *,int,char const**,scalar_t__*) ;
 int serf_request_get_alloc (int *) ;
 TYPE_3__* stub1 (int *,int *,int ,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_3__* svn_ra_serf__wrap_err (scalar_t__,int *) ;
 scalar_t__ svn_spillbuf__create (int ,int ,int ) ;
 int svn_spillbuf__write (scalar_t__,char const*,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
update_delay_handler(serf_request_t *request,
                     serf_bucket_t *response,
                     void *handler_baton,
                     apr_pool_t *scratch_pool)
{
  update_delay_baton_t *udb = handler_baton;
  apr_status_t status;
  apr_pool_t *iterpool = ((void*)0);

  if (! udb->spillbuf)
    {
      if (udb->report->send_all_mode)
        {






          return svn_error_trace(udb->inner_handler(request, response,
                                                    udb->inner_handler_baton,
                                                    scratch_pool));
        }

      while ((udb->report->num_active_fetches + udb->report->num_active_propfinds)
                 < REQUEST_COUNT_TO_RESUME)
        {
          const char *data;
          apr_size_t len;
          svn_boolean_t at_eof = FALSE;
          svn_error_t *err;

          status = serf_bucket_read(response, PARSE_CHUNK_SIZE, &data, &len);
          if (SERF_BUCKET_READ_ERROR(status))
            return svn_ra_serf__wrap_err(status, ((void*)0));
          else if (APR_STATUS_IS_EOF(status))
            udb->report->report_received = at_eof = TRUE;

          if (!iterpool)
            iterpool = svn_pool_create(scratch_pool);
          else
            svn_pool_clear(iterpool);

          if (len == 0 && !at_eof)
            return svn_ra_serf__wrap_err(status, ((void*)0));

          err = process_buffer(udb, request, data, len, at_eof,
                               serf_request_get_alloc(request),
                               iterpool);

          if (err && SERF_BUCKET_READ_ERROR(err->apr_err))
            return svn_error_trace(err);
          else if (err && APR_STATUS_IS_EAGAIN(err->apr_err))
            {
              svn_error_clear(err);
            }
          else if (err && (APR_STATUS_IS_EOF(err->apr_err)))
            {
              svn_pool_destroy(iterpool);
              return svn_error_trace(err);
            }
          else
            {

              return svn_error_trace(err);
            }
        }


      udb->spillbuf = svn_spillbuf__create(SPILLBUF_BLOCKSIZE,
                                           SPILLBUF_MAXBUFFSIZE,
                                           udb->report->pool);
    }


  do
    {
      const char *data;
      apr_size_t len;


      status = serf_bucket_read(response, 8*PARSE_CHUNK_SIZE, &data, &len);

      if (!SERF_BUCKET_READ_ERROR(status))
        SVN_ERR(svn_spillbuf__write(udb->spillbuf, data, len, scratch_pool));
    }
  while (status == APR_SUCCESS);

  if (APR_STATUS_IS_EOF(status))
    udb->report->report_received = TRUE;




  if (status)
    return svn_ra_serf__wrap_err(status, ((void*)0));
  else
    return SVN_NO_ERROR;
}
