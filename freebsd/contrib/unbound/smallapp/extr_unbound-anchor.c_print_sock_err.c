
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WSAGetLastError () ;
 int errno ;
 int printf (char*,char const*,char*) ;
 char* strerror (int ) ;
 scalar_t__ verb ;
 char* wsa_strerror (int ) ;

__attribute__((used)) static void
print_sock_err(const char* msg)
{

 if(verb) printf("%s: %s\n", msg, strerror(errno));



}
