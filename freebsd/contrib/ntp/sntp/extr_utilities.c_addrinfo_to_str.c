
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; } ;
typedef int sockaddr_u ;
typedef int s ;


 int ZERO (int ) ;
 int memcpy (int *,int ,int ) ;
 int min (int,int ) ;
 char* ss_to_str (int *) ;

char *
addrinfo_to_str (
 const struct addrinfo *addr
 )
{
 sockaddr_u s;

 ZERO(s);
 memcpy(&s, addr->ai_addr, min(sizeof(s), addr->ai_addrlen));

 return ss_to_str(&s);
}
