
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; int progress_baton; int (* progress_func ) (scalar_t__,int,int ,int ) ;} ;
typedef TYPE_1__ svn_ra_serf__session_t ;
typedef scalar_t__ apr_off_t ;


 int stub1 (scalar_t__,int,int ,int ) ;

__attribute__((used)) static void
svn_ra_serf__progress(void *progress_baton, apr_off_t bytes_read,
                      apr_off_t bytes_written)
{
  const svn_ra_serf__session_t *serf_sess = progress_baton;
  if (serf_sess->progress_func)
    {
      serf_sess->progress_func(bytes_read + bytes_written, -1,
                               serf_sess->progress_baton,
                               serf_sess->pool);
    }
}
