
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int hints ;


 int IPPROTO_TCP ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;

struct addrinfo *
pcap_nametoaddrinfo(const char *name)
{
 struct addrinfo hints, *res;
 int error;

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_protocol = IPPROTO_TCP;
 error = getaddrinfo(name, ((void*)0), &hints, &res);
 if (error)
  return ((void*)0);
 else
  return res;
}
