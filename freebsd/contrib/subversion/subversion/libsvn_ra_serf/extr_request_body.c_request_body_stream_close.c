
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ scratch_pool; int result_pool; int all_data; scalar_t__ collect_bucket; scalar_t__ file; } ;
typedef TYPE_1__ svn_ra_serf__request_body_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int allocate_all (TYPE_1__*,int ) ;
 int apr_file_buffer_set (scalar_t__,int *,int ) ;
 int svn_io_file_flush (scalar_t__,scalar_t__) ;
 int svn_pool_destroy (scalar_t__) ;

__attribute__((used)) static svn_error_t *
request_body_stream_close(void *baton)
{
  svn_ra_serf__request_body_t *b = baton;

  if (b->file)
    {
      SVN_ERR(svn_io_file_flush(b->file, b->scratch_pool));
      apr_file_buffer_set(b->file, ((void*)0), 0);
    }
  else if (b->collect_bucket)
    b->all_data = allocate_all(b, b->result_pool);

  if (b->scratch_pool)
    svn_pool_destroy(b->scratch_pool);

  return SVN_NO_ERROR;
}
