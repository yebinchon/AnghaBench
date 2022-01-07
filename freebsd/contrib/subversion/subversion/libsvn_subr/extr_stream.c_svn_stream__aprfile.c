
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * file; } ;
typedef TYPE_1__ svn_stream_t ;
typedef int apr_file_t ;



apr_file_t *
svn_stream__aprfile(svn_stream_t *stream)
{
  return stream->file;
}
