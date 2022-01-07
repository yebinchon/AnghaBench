
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct sbb_baton {char* holding; int hold_len; int scratch_pool; int spillbuf; } ;
struct TYPE_3__ {struct sbb_baton* data; } ;
typedef TYPE_1__ serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int APR_EOF ;
 int APR_SUCCESS ;
 int svn_error_clear (int *) ;
 int svn_pool_clear (int ) ;
 int * svn_spillbuf__read (char**,int *,int ,int ) ;

__attribute__((used)) static apr_status_t
sb_bucket_peek(serf_bucket_t *bucket,
               const char **data, apr_size_t *len)
{
  struct sbb_baton *sbb = bucket->data;
  svn_error_t *err;


  if (sbb->holding == ((void*)0))
    {
      err = svn_spillbuf__read(&sbb->holding, &sbb->hold_len, sbb->spillbuf,
                               sbb->scratch_pool);
      svn_pool_clear(sbb->scratch_pool);


      svn_error_clear(err);
    }


  *data = sbb->holding;
  *len = sbb->hold_len;

  return *data == ((void*)0) ? APR_EOF : APR_SUCCESS;
}
