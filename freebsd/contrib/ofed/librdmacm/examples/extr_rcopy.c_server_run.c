
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union rsocket_address {int sa; } ;
typedef int socklen_t ;


 int SHUT_RDWR ;
 char* _ntop (union rsocket_address*) ;
 int fflush (int *) ;
 int printf (char*,...) ;
 int raccept (int,int *,int*) ;
 int rclose (int) ;
 int rshutdown (int,int ) ;
 int server_listen () ;
 int server_process (int) ;

__attribute__((used)) static int server_run(void)
{
 int lrs, rs;
 union rsocket_address rsa;
 socklen_t len;

 lrs = server_listen();
 if (lrs < 0)
  return lrs;

 while (1) {
  len = sizeof rsa;
  printf("waiting for connection...");
  fflush(((void*)0));
  rs = raccept(lrs, &rsa.sa, &len);

  printf("client: %s\n", _ntop(&rsa));
  server_process(rs);

  rshutdown(rs, SHUT_RDWR);
  rclose(rs);
 }
 return 0;
}
