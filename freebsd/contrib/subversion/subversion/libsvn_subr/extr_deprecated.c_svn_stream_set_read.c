
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_read_fn_t ;


 int svn_stream_set_read2 (int *,int *,int ) ;

void
svn_stream_set_read(svn_stream_t *stream,
                    svn_read_fn_t read_fn)
{
  svn_stream_set_read2(stream, ((void*)0) ,
                       read_fn);
}
