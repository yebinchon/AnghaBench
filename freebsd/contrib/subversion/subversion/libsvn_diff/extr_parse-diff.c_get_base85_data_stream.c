
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
struct base85_baton_t {void* end_pos; void* next_pos; int iterpool; int * file; } ;
typedef int apr_pool_t ;
typedef void* apr_off_t ;
typedef int apr_file_t ;


 struct base85_baton_t* apr_pcalloc (int *,int) ;
 int close_handler_base85 ;
 int read_handler_base85 ;
 int svn_pool_create (int *) ;
 int * svn_stream_create (struct base85_baton_t*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_read2 (int *,int *,int ) ;

__attribute__((used)) static svn_stream_t *
get_base85_data_stream(apr_file_t *file,
                       apr_off_t start_pos,
                       apr_off_t end_pos,
                       apr_pool_t *result_pool)
{
  struct base85_baton_t *b85b = apr_pcalloc(result_pool, sizeof(*b85b));
  svn_stream_t *base85s = svn_stream_create(b85b, result_pool);

  b85b->file = file;
  b85b->iterpool = svn_pool_create(result_pool);
  b85b->next_pos = start_pos;
  b85b->end_pos = end_pos;

  svn_stream_set_read2(base85s, ((void*)0) ,
                       read_handler_base85);
  svn_stream_set_close(base85s, close_handler_base85);
  return base85s;
}
