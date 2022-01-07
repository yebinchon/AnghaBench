
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int sndbuf ;


 int MSG_EXCESSIVE ;
 int MSG_MSGDUMP ;
 int SOL_SOCKET ;
 int SO_SNDBUF ;
 int TIOCOUTQ ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;
 int wpa_printf (int,char*,char const*,int,int,int,int) ;

__attribute__((used)) static void wpas_ctrl_sock_debug(const char *title, int sock, const char *buf,
     size_t len)
{

 socklen_t optlen;
 int sndbuf, outq;
 int level = MSG_MSGDUMP;

 if (len >= 5 && os_strncmp(buf, "PONG\n", 5) == 0)
  level = MSG_EXCESSIVE;

 optlen = sizeof(sndbuf);
 sndbuf = 0;
 if (getsockopt(sock, SOL_SOCKET, SO_SNDBUF, &sndbuf, &optlen) < 0)
  sndbuf = -1;

 if (ioctl(sock, TIOCOUTQ, &outq) < 0)
  outq = -1;

 wpa_printf(level,
     "CTRL-DEBUG: %s: sock=%d sndbuf=%d outq=%d send_len=%d",
     title, sock, sndbuf, outq, (int) len);

}
