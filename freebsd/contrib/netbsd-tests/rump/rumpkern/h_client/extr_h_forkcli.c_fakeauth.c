
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rumpclient_fork {int dummy; } ;


 scalar_t__ ESRCH ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int rumpclient_fork_init (struct rumpclient_fork*) ;
 struct rumpclient_fork* rumpclient_prefork () ;

__attribute__((used)) static void
fakeauth(void)
{
 struct rumpclient_fork *rf;
 uint32_t *auth;
 int rv;

 if ((rf = rumpclient_prefork()) == ((void*)0))
  err(1, "prefork");


 auth = (void *)rf;
 *(auth+3) = *(auth+3) ^ 0x1;

 rv = rumpclient_fork_init(rf);
 if (!(rv == -1 && errno == ESRCH))
  exit(1);
}
