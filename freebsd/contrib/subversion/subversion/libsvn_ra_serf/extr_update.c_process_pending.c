
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int * spillbuf; TYPE_1__* report; } ;
typedef TYPE_2__ update_delay_baton_t ;
struct TYPE_14__ {int apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {scalar_t__ num_active_fetches; scalar_t__ num_active_propfinds; int report_received; } ;


 scalar_t__ APR_STATUS_IS_EAGAIN (int ) ;
 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 int FALSE ;
 scalar_t__ REQUEST_COUNT_TO_RESUME ;
 int SVN_ERR (int ) ;
 TYPE_3__* SVN_NO_ERROR ;
 int TRUE ;
 TYPE_3__* process_buffer (TYPE_2__*,int *,char const*,int ,int ,int *,int *) ;
 int * serf_bucket_allocator_create (int *,int *,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_spillbuf__read (char const**,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
process_pending(update_delay_baton_t *udb,
                apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = ((void*)0);
  serf_bucket_alloc_t *alloc = ((void*)0);

  while ((udb->report->num_active_fetches + udb->report->num_active_propfinds)
            < REQUEST_COUNT_TO_RESUME)
    {
      const char *data;
      apr_size_t len;
      svn_boolean_t at_eof;
      svn_error_t *err;

      if (!iterpool)
        {
          iterpool = svn_pool_create(scratch_pool);
          alloc = serf_bucket_allocator_create(scratch_pool, ((void*)0), ((void*)0));
        }
      else
        svn_pool_clear(iterpool);

      SVN_ERR(svn_spillbuf__read(&data, &len, udb->spillbuf, iterpool));

      if (data == ((void*)0) && !udb->report->report_received)
        break;
      else if (data == ((void*)0))
        at_eof = TRUE;
      else
        at_eof = FALSE;

      err = process_buffer(udb, ((void*)0) , data, len,
                           at_eof, alloc, iterpool);

      if (err && APR_STATUS_IS_EAGAIN(err->apr_err))
        {
          svn_error_clear(err);
        }
      else if (err && APR_STATUS_IS_EOF(err->apr_err))
        {
          svn_error_clear(err);

          svn_pool_destroy(iterpool);
          udb->spillbuf = ((void*)0);
          return SVN_NO_ERROR;
        }
      else if (err)
        return svn_error_trace(err);
    }

  if (iterpool)
    svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
