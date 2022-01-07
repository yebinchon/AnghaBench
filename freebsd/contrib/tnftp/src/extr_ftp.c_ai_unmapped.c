
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct sockaddr_in* s6_addr; } ;
struct sockaddr_in6 {int sin6_port; TYPE_1__ sin6_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; int sin_addr; void* sin_family; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; int * ai_addr; } ;
typedef int socklen_t ;
typedef int sin ;


 void* AF_INET ;
 scalar_t__ AF_INET6 ;
 int IN6_IS_ADDR_V4MAPPED (TYPE_1__*) ;
 int memcpy (int *,struct sockaddr_in*,int) ;
 int memset (struct sockaddr_in*,int ,int) ;

void
ai_unmapped(struct addrinfo *ai)
{
}
