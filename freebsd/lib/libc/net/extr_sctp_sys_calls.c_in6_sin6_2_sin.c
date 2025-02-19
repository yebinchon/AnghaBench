
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * __u6_addr32; } ;
struct TYPE_6__ {TYPE_2__ __u6_addr; } ;
struct sockaddr_in6 {TYPE_3__ sin6_addr; int sin6_port; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;


 int AF_INET ;
 int bzero (struct sockaddr_in*,int) ;

__attribute__((used)) static void
in6_sin6_2_sin(struct sockaddr_in *sin, struct sockaddr_in6 *sin6)
{
 bzero(sin, sizeof(*sin));
 sin->sin_len = sizeof(struct sockaddr_in);
 sin->sin_family = AF_INET;
 sin->sin_port = sin6->sin6_port;
 sin->sin_addr.s_addr = sin6->sin6_addr.__u6_addr.__u6_addr32[3];
}
