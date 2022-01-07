
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file_stream; } ;
typedef TYPE_1__ text_baton_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int * svn_stream_write (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
text_stream_writer(void *baton,
                   const char *data,
                   apr_size_t *len)
{
  text_baton_t *tb = baton;


  return svn_stream_write(tb->file_stream, data, len);
}
