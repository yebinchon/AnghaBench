
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int bufsiz_wanted ;
typedef int bufsiz_current ;


 int EIPSEC_NO_ERROR ;
 int PF_KEY ;
 int PF_KEY_V2 ;
 int SOCK_RAW ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int __ipsec_errcode ;
 int __ipsec_set_strerror (int ) ;
 int errno ;
 int getsockopt (int,int ,int ,int*,int*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;

int
pfkey_open(void)
{
 int so;
 int bufsiz_current, bufsiz_wanted;
 int ret;
 socklen_t len;

 if ((so = socket(PF_KEY, SOCK_RAW, PF_KEY_V2)) < 0) {
  __ipsec_set_strerror(strerror(errno));
  return -1;
 }






 bufsiz_wanted = 128 * 1024;
 len = sizeof(bufsiz_current);
 ret = getsockopt(so, SOL_SOCKET, SO_SNDBUF,
  &bufsiz_current, &len);
 if ((ret < 0) || (bufsiz_current < bufsiz_wanted))
  (void)setsockopt(so, SOL_SOCKET, SO_SNDBUF,
   &bufsiz_wanted, sizeof(bufsiz_wanted));


 bufsiz_wanted = 2 * 1024 * 1024;
 len = sizeof(bufsiz_current);
 ret = getsockopt(so, SOL_SOCKET, SO_RCVBUF,
  &bufsiz_current, &len);
 if (ret < 0)
  bufsiz_current = 128 * 1024;

 for (; bufsiz_wanted > bufsiz_current; bufsiz_wanted /= 2) {
  if (setsockopt(so, SOL_SOCKET, SO_RCVBUF,
    &bufsiz_wanted, sizeof(bufsiz_wanted)) == 0)
   break;
 }

 __ipsec_errcode = EIPSEC_NO_ERROR;
 return so;
}
