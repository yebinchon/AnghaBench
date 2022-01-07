
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;


 int SSH_DEFAULT_PORT ;
 int SSH_SERVICE_NAME ;
 struct servent* getservbyname (int ,char*) ;
 int ntohs (int ) ;

int
default_ssh_port(void)
{
 static int port;
 struct servent *sp;

 if (port == 0) {
  sp = getservbyname(SSH_SERVICE_NAME, "tcp");
  port = sp ? ntohs(sp->s_port) : SSH_DEFAULT_PORT;
 }
 return port;
}
