
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ u_int64_t ;
typedef int u_int ;
typedef scalar_t__ time_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct ssh {int dummy; } ;
typedef int fd_set ;
struct TYPE_2__ {scalar_t__ client_alive_interval; } ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 scalar_t__ MINIMUM (scalar_t__,int) ;
 scalar_t__ channel_not_very_much_buffered_data () ;
 int channel_prepare_select (struct ssh*,int **,int **,int*,int*,scalar_t__*) ;
 scalar_t__ child_terminated ;
 int client_alive_check (struct ssh*) ;
 scalar_t__ errno ;
 int error (char*,int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ monotime () ;
 int notify_done (int *) ;
 int notify_prepare (int *) ;
 TYPE_1__ options ;
 scalar_t__ packet_have_data_to_write () ;
 scalar_t__ packet_not_very_much_data_to_write () ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static void
wait_until_can_do_something(struct ssh *ssh,
    int connection_in, int connection_out,
    fd_set **readsetp, fd_set **writesetp, int *maxfdp,
    u_int *nallocp, u_int64_t max_time_ms)
{
 struct timeval tv, *tvp;
 int ret;
 time_t minwait_secs = 0;
 int client_alive_scheduled = 0;
 static time_t last_client_time;


 channel_prepare_select(ssh, readsetp, writesetp, maxfdp,
     nallocp, &minwait_secs);


 if (minwait_secs != 0)
  max_time_ms = MINIMUM(max_time_ms, (u_int)minwait_secs * 1000);
 if (options.client_alive_interval) {
  uint64_t keepalive_ms =
      (uint64_t)options.client_alive_interval * 1000;

  client_alive_scheduled = 1;
  if (max_time_ms == 0 || max_time_ms > keepalive_ms)
   max_time_ms = keepalive_ms;
 }





 FD_SET(connection_in, *readsetp);
 notify_prepare(*readsetp);





 if (packet_have_data_to_write())
  FD_SET(connection_out, *writesetp);





 if (child_terminated && packet_not_very_much_data_to_write())
  if (max_time_ms == 0 || client_alive_scheduled)
   max_time_ms = 100;

 if (max_time_ms == 0)
  tvp = ((void*)0);
 else {
  tv.tv_sec = max_time_ms / 1000;
  tv.tv_usec = 1000 * (max_time_ms % 1000);
  tvp = &tv;
 }


 ret = select((*maxfdp)+1, *readsetp, *writesetp, ((void*)0), tvp);

 if (ret == -1) {
  memset(*readsetp, 0, *nallocp);
  memset(*writesetp, 0, *nallocp);
  if (errno != EINTR)
   error("select: %.100s", strerror(errno));
 } else if (client_alive_scheduled) {
  time_t now = monotime();

  if (ret == 0) {
   client_alive_check(ssh);
  } else if (FD_ISSET(connection_in, *readsetp)) {
   last_client_time = now;
  } else if (last_client_time != 0 && last_client_time +
      options.client_alive_interval <= now) {
   client_alive_check(ssh);
   last_client_time = now;
  }
 }

 notify_done(*readsetp);
}
