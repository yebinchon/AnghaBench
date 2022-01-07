
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrinfo {int ai_family; int ai_flags; int * ai_next; int ai_socktype; } ;
typedef int hints ;
struct TYPE_2__ {int address_family; } ;


 int AF_UNSPEC ;
 int AI_NUMERICHOST ;
 int AI_NUMERICSERV ;
 int NI_MAXSERV ;
 int SOCK_STREAM ;
 int default_ssh_port () ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ is_addr_fast (char const*) ;
 int memset (struct addrinfo*,int ,int) ;
 TYPE_1__ options ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
is_addr(const char *name)
{
 char strport[NI_MAXSERV];
 struct addrinfo hints, *res;

 if (is_addr_fast(name))
  return 1;

 snprintf(strport, sizeof strport, "%u", default_ssh_port());
 memset(&hints, 0, sizeof(hints));
 hints.ai_family = options.address_family == -1 ?
     AF_UNSPEC : options.address_family;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_flags = AI_NUMERICHOST|AI_NUMERICSERV;
 if (getaddrinfo(name, strport, &hints, &res) != 0)
  return 0;
 if (res == ((void*)0) || res->ai_next != ((void*)0)) {
  freeaddrinfo(res);
  return 0;
 }
 freeaddrinfo(res);
 return 1;
}
