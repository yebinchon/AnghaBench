
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; int sin_family; } ;
struct TYPE_8__ {TYPE_2__ sa4; } ;
typedef TYPE_3__ sockaddr_u ;


 int AF_INET ;
 int SET_PORT (TYPE_3__*,int) ;
 int inet_addr (char const*) ;

sockaddr_u
CreateSockaddr4(const char* address) {
 sockaddr_u s;
 s.sa4.sin_family = AF_INET;
 s.sa4.sin_addr.s_addr = inet_addr(address);
 SET_PORT(&s, 123);

 return s;
}
