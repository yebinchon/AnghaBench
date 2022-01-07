
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct addrinfo {TYPE_1__* ai_addr; int ai_family; int ai_addrlen; } ;
struct TYPE_4__ {int sa_family; } ;
struct TYPE_5__ {TYPE_1__ sa; } ;
typedef TYPE_2__ sockaddr_u ;


 int SIZEOF_SOCKADDR (int ) ;

struct addrinfo
CreateAddrinfo(sockaddr_u* sock) {
 struct addrinfo a;
 a.ai_family = sock->sa.sa_family;
 a.ai_addrlen = SIZEOF_SOCKADDR(a.ai_family);
 a.ai_addr = &sock->sa;
 return a;
}
