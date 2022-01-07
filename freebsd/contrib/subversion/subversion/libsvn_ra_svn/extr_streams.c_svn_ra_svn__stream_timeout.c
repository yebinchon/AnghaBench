
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timeout_baton; int (* timeout_fn ) (int ,int ) ;} ;
typedef TYPE_1__ svn_ra_svn__stream_t ;
typedef int apr_interval_time_t ;


 int stub1 (int ,int ) ;

void
svn_ra_svn__stream_timeout(svn_ra_svn__stream_t *stream,
                           apr_interval_time_t interval)
{
  stream->timeout_fn(stream->timeout_baton, interval);
}
