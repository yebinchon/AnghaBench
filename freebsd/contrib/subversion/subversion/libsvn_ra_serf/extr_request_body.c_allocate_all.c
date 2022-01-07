
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * collect_bucket; scalar_t__ total_bytes; } ;
typedef TYPE_1__ svn_ra_serf__request_body_t ;
typedef scalar_t__ apr_status_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_EOF ;
 int SERF_BUCKET_READ_ERROR (scalar_t__) ;
 char* apr_pcalloc (int *,scalar_t__) ;
 int memcpy (char*,char const*,scalar_t__) ;
 int serf_bucket_destroy (int *) ;
 scalar_t__ serf_bucket_read (int *,scalar_t__,char const**,scalar_t__*) ;

__attribute__((used)) static const char *
allocate_all(svn_ra_serf__request_body_t *body,
             apr_pool_t *result_pool)
{
  char *buffer = apr_pcalloc(result_pool, body->total_bytes);
  const char *data;
  apr_size_t sz;
  apr_status_t s;
  apr_size_t remaining = body->total_bytes;
  char *next = buffer;

  while (!(s = serf_bucket_read(body->collect_bucket, remaining, &data, &sz)))
    {
      memcpy(next, data, sz);
      remaining -= sz;
      next += sz;

      if (! remaining)
        break;
    }

  if (!SERF_BUCKET_READ_ERROR(s))
    {
      memcpy(next, data, sz);
    }

  serf_bucket_destroy(body->collect_bucket);
  body->collect_bucket = ((void*)0);

  return (s != APR_EOF) ? ((void*)0) : buffer;
}
