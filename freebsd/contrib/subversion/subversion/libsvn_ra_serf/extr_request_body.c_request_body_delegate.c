
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_bytes; int all_data; scalar_t__ file; } ;
typedef TYPE_1__ svn_ra_serf__request_body_t ;
typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;


 int APR_SET ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * serf_bucket_file_create (scalar_t__,int *) ;
 int * serf_bucket_simple_create (int ,int ,int *,int *,int *) ;
 int svn_io_file_seek (scalar_t__,int ,scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
request_body_delegate(serf_bucket_t **body_bkt,
                      void *baton,
                      serf_bucket_alloc_t *alloc,
                      apr_pool_t *request_pool,
                      apr_pool_t *scratch_pool)
{
  svn_ra_serf__request_body_t *b = baton;

  if (b->file)
    {
      apr_off_t offset;

      offset = 0;
      SVN_ERR(svn_io_file_seek(b->file, APR_SET, &offset, scratch_pool));

      *body_bkt = serf_bucket_file_create(b->file, alloc);
    }
  else
    {
      *body_bkt = serf_bucket_simple_create(b->all_data,
                                            b->total_bytes,
                                            ((void*)0), ((void*)0), alloc);
    }

  return SVN_NO_ERROR;
}
