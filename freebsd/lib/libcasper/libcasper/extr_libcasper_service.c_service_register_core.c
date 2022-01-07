
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {int dummy; } ;
struct casper_service {int cs_service; } ;


 int CORE_CASPER_NAME ;
 int abort () ;
 int casper_command ;
 int casper_limit ;
 int close (int) ;
 struct service_connection* service_connection_add (int ,int,int *) ;
 struct casper_service* service_register (int ,int ,int ,int ) ;

__attribute__((used)) static void
service_register_core(int fd)
{
 struct casper_service *casserv;
 struct service_connection *sconn;

 casserv = service_register(CORE_CASPER_NAME, casper_limit,
     casper_command, 0);
 sconn = service_connection_add(casserv->cs_service, fd, ((void*)0));
 if (sconn == ((void*)0)) {
  close(fd);
  abort();
 }
}
