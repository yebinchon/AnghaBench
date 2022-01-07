
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_3__ {int * stream; } ;
typedef TYPE_1__ svn_ra_serf__request_body_t ;



svn_stream_t *
svn_ra_serf__request_body_get_stream(svn_ra_serf__request_body_t *body)
{
  return body->stream;
}
