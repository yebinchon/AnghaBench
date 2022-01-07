
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_flags; int ai_socktype; } ;
typedef int hints ;


 int AI_NUMERICHOST ;
 int SOCK_DGRAM ;
 int error (char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;

__attribute__((used)) static int
is_numeric_hostname(const char *hostname)
{
 struct addrinfo hints, *ai;





 if (hostname == ((void*)0)) {
  error("is_numeric_hostname called with NULL hostname");
  return -1;
 }

 memset(&hints, 0, sizeof(hints));
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_flags = AI_NUMERICHOST;

 if (getaddrinfo(hostname, ((void*)0), &hints, &ai) == 0) {
  freeaddrinfo(ai);
  return -1;
 }

 return 0;
}
