
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int opts; int fd_flags; int state; } ;


 int O_NONBLOCK ;
 int RS_OPT_SVC_ACTIVE ;
 int RS_SVC_REM_DGRAM ;
 int ds_all_sends_done ;
 int ds_process_cqs (struct rsocket*,int ,int ) ;
 int rs_notify_svc (int *,struct rsocket*,int ) ;
 int rs_readable ;
 int rs_set_nonblocking (struct rsocket*,int) ;
 int rs_writable ;
 int udp_svc ;

__attribute__((used)) static void ds_shutdown(struct rsocket *rs)
{
 if (rs->opts & RS_OPT_SVC_ACTIVE)
  rs_notify_svc(&udp_svc, rs, RS_SVC_REM_DGRAM);

 if (rs->fd_flags & O_NONBLOCK)
  rs_set_nonblocking(rs, 0);

 rs->state &= ~(rs_readable | rs_writable);
 ds_process_cqs(rs, 0, ds_all_sends_done);

 if (rs->fd_flags & O_NONBLOCK)
  rs_set_nonblocking(rs, rs->fd_flags);
}
