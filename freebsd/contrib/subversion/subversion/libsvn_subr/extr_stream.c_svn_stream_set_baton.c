
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* baton; } ;
typedef TYPE_1__ svn_stream_t ;



void
svn_stream_set_baton(svn_stream_t *stream, void *baton)
{
  stream->baton = baton;
}
