
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int g_addr ;
 int g_addrlen ;
 int g_msg ;
 int svr_bind () ;
 int svr_process (int *,scalar_t__,int *,int) ;
 scalar_t__ svr_recv (int *,int,int *,int*) ;

__attribute__((used)) static int svr_run(void)
{
 ssize_t len;
 int ret;

 ret = svr_bind();
 while (!ret) {
  g_addrlen = sizeof g_addr;
  len = svr_recv(&g_msg, sizeof g_msg, &g_addr, &g_addrlen);
  if (len < 0)
   return len;

  ret = svr_process(&g_msg, len, &g_addr, g_addrlen);
 }
 return ret;
}
