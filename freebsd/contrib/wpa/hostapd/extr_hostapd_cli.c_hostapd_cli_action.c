
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int fd_set ;
typedef int buf ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ errno ;
 int hostapd_cli_action_process ;
 int hostapd_cli_quit ;
 int hostapd_cli_recv_pending (struct wpa_ctrl*,int ,int) ;
 scalar_t__ os_memcmp (char*,char*,int) ;
 int perror (char*) ;
 int ping_interval ;
 int printf (char*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int wpa_ctrl_get_fd (struct wpa_ctrl*) ;
 scalar_t__ wpa_ctrl_request (struct wpa_ctrl*,char*,int,char*,size_t*,int ) ;

__attribute__((used)) static void hostapd_cli_action(struct wpa_ctrl *ctrl)
{
 fd_set rfds;
 int fd, res;
 struct timeval tv;
 char buf[256];
 size_t len;

 fd = wpa_ctrl_get_fd(ctrl);

 while (!hostapd_cli_quit) {
  FD_ZERO(&rfds);
  FD_SET(fd, &rfds);
  tv.tv_sec = ping_interval;
  tv.tv_usec = 0;
  res = select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv);
  if (res < 0 && errno != EINTR) {
   perror("select");
   break;
  }

  if (FD_ISSET(fd, &rfds))
   hostapd_cli_recv_pending(ctrl, 0, 1);
  else {
   len = sizeof(buf) - 1;
   if (wpa_ctrl_request(ctrl, "PING", 4, buf, &len,
          hostapd_cli_action_process) < 0 ||
       len < 4 || os_memcmp(buf, "PONG", 4) != 0) {
    printf("hostapd did not reply to PING "
           "command - exiting\n");
    break;
   }
  }
 }
}
