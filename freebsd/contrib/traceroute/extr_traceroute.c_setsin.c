
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_family; } ;


 int AF_INET ;
 int memset (struct sockaddr_in*,int ,int) ;

void
setsin(register struct sockaddr_in *sin, register u_int32_t addr)
{

 memset(sin, 0, sizeof(*sin));



 sin->sin_family = AF_INET;
 sin->sin_addr.s_addr = addr;
}
