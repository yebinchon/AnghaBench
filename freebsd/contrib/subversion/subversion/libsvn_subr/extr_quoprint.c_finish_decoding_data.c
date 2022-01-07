
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct decode_baton {int pool; int output; } ;


 int svn_pool_destroy (int ) ;
 int * svn_stream_close (int ) ;

__attribute__((used)) static svn_error_t *
finish_decoding_data(void *baton)
{
  struct decode_baton *db = baton;
  svn_error_t *err;


  err = svn_stream_close(db->output);
  svn_pool_destroy(db->pool);
  return err;
}
