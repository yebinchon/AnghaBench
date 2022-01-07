
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct file_baton {int original_checksum; int local_abspath; TYPE_1__* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int db; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__db_pristine_read (int **,int *,int ,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
lazy_open_source(svn_stream_t **stream,
                 void *baton,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct file_baton *fb = baton;

  SVN_ERR(svn_wc__db_pristine_read(stream, ((void*)0), fb->edit_baton->db,
                                   fb->local_abspath,
                                   fb->original_checksum,
                                   result_pool, scratch_pool));


  return SVN_NO_ERROR;
}
