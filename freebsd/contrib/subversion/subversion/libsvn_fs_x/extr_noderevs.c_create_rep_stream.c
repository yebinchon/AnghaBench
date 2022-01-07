
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_packed__int_stream_t ;


 int FALSE ;
 int TRUE ;
 int * svn_packed__create_int_substream (int *,int ,int ) ;

__attribute__((used)) static svn_packed__int_stream_t *
create_rep_stream(svn_packed__int_stream_t *parent)
{
  svn_packed__int_stream_t *stream
    = svn_packed__create_int_substream(parent, FALSE, FALSE);



  svn_packed__create_int_substream(stream, FALSE, FALSE);


  svn_packed__create_int_substream(stream, TRUE, FALSE);
  svn_packed__create_int_substream(stream, FALSE, FALSE);
  svn_packed__create_int_substream(stream, FALSE, FALSE);
  svn_packed__create_int_substream(stream, FALSE, FALSE);

  return stream;
}
