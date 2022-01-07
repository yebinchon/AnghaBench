
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int tv ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sadb_msg {int dummy; } ;
typedef int rbuf ;


 int PF_KEY ;
 int PF_KEY_V2 ;
 int SOCK_RAW ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int close (int) ;
 scalar_t__ m_buf ;
 int m_len ;
 int perror (char*) ;
 int pfkey_sadump (struct sadb_msg*) ;
 int recv (int,int *,int,int ) ;
 int send (int,scalar_t__,int ,int ) ;
 scalar_t__ setsockopt (int,int ,int ,struct timeval*,int) ;
 int socket (int ,int ,int ) ;

int
sendkeymsg()
{
 u_char rbuf[1024 * 32];
 int so, len;

 if ((so = socket(PF_KEY, SOCK_RAW, PF_KEY_V2)) < 0) {
  perror("socket(PF_KEY)");
  goto end;
 }
 pfkey_sadump((struct sadb_msg *)m_buf);

 if ((len = send(so, m_buf, m_len, 0)) < 0) {
  perror("send");
  goto end;
 }

 if ((len = recv(so, rbuf, sizeof(rbuf), 0)) < 0) {
  perror("recv");
  goto end;
 }

 pfkey_sadump((struct sadb_msg *)rbuf);

end:
 (void)close(so);
 return(0);
}
