
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sin6_addr; } ;
struct TYPE_5__ {int sin_addr; } ;
struct TYPE_4__ {int sa_family; } ;
union rsocket_address {TYPE_3__ sin6; TYPE_2__ sin; TYPE_1__ sa; } ;




 int inet_ntop (int const,int *,char*,int) ;

__attribute__((used)) static char *_ntop(union rsocket_address *rsa)
{
 static char addr[32];

 switch (rsa->sa.sa_family) {
 case 129:
  inet_ntop(129, &rsa->sin.sin_addr, addr, sizeof addr);
  break;
 case 128:
  inet_ntop(128, &rsa->sin6.sin6_addr, addr, sizeof addr);
  break;
 default:
  addr[0] = '\0';
  break;
 }

 return addr;
}
