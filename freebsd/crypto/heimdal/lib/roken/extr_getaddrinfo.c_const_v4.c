
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct sockaddr_in {int sin_port; struct in_addr sin_addr; int sin_family; } ;
struct addrinfo {int ai_addrlen; int * ai_addr; int ai_family; } ;


 int AF_INET ;
 int EAI_MEMORY ;
 int PF_INET ;
 int * malloc (int) ;
 int memset (struct sockaddr_in*,int ,int) ;

__attribute__((used)) static int
const_v4 (struct addrinfo *a, void *data, int port)
{
    struct sockaddr_in *sin4;
    struct in_addr *addr = (struct in_addr *)data;

    a->ai_family = PF_INET;
    a->ai_addrlen = sizeof(*sin4);
    a->ai_addr = malloc (sizeof(*sin4));
    if (a->ai_addr == ((void*)0))
 return EAI_MEMORY;
    sin4 = (struct sockaddr_in *)a->ai_addr;
    memset (sin4, 0, sizeof(*sin4));
    sin4->sin_family = AF_INET;
    sin4->sin_port = port;
    sin4->sin_addr = *addr;
    return 0;
}
