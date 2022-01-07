
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct sbb_baton {char* holding; scalar_t__ hold_len; int scratch_pool; int spillbuf; } ;
struct TYPE_3__ {struct sbb_baton* data; } ;
typedef TYPE_1__ serf_bucket_t ;
typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;


 int APR_EOF ;
 int APR_SUCCESS ;
 int svn_error_clear (int *) ;
 int svn_pool_clear (int ) ;
 int * svn_spillbuf__read (char const**,scalar_t__*,int ,int ) ;

__attribute__((used)) static apr_status_t
sb_bucket_read(serf_bucket_t *bucket, apr_size_t requested,
               const char **data, apr_size_t *len)
{
  struct sbb_baton *sbb = bucket->data;
  svn_error_t *err;

  if (sbb->holding)
    {
      *data = sbb->holding;

      if (requested < sbb->hold_len)
        {
          *len = requested;
          sbb->holding += requested;
          sbb->hold_len -= requested;
          return APR_SUCCESS;
        }


      *len = sbb->hold_len;
      sbb->holding = ((void*)0);
      return APR_SUCCESS;
    }

  err = svn_spillbuf__read(data, len, sbb->spillbuf, sbb->scratch_pool);
  svn_pool_clear(sbb->scratch_pool);


  svn_error_clear(err);



  if (requested < *len)
    {
      sbb->holding = *data + requested;
      sbb->hold_len = *len - requested;
      *len = requested;
    }

  return *data == ((void*)0) ? APR_EOF : APR_SUCCESS;
}
