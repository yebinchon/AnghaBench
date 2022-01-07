
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int S_ADDR (struct sockaddr*) ;
 char const* naddr_ntoa (int ) ;

const char *
saddr_ntoa(struct sockaddr *sa)
{
 return (sa == ((void*)0)) ? "?" : naddr_ntoa(S_ADDR(sa));
}
