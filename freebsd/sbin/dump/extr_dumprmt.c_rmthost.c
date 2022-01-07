
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGPIPE ;
 scalar_t__ rmtape ;
 int rmtconnaborted ;
 int rmtgetconn () ;
 int * rmtpeer ;
 int signal (int ,int ) ;
 int * strdup (char const*) ;

int
rmthost(const char *host)
{

 rmtpeer = strdup(host);
 if (rmtpeer == ((void*)0))
  return (0);
 signal(SIGPIPE, rmtconnaborted);
 rmtgetconn();
 if (rmtape < 0)
  return (0);
 return (1);
}
