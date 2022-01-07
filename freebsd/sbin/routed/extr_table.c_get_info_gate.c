
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr_dl {scalar_t__ sdl_family; int sdl_index; } ;
struct sockaddr {int dummy; } ;
struct interface {int int_addr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_LINK ;
 struct interface* ifwithindex (int ,int) ;

__attribute__((used)) static int
get_info_gate(struct sockaddr **sap,
       struct sockaddr_in *rsin)
{
 struct sockaddr_dl *sdl = (struct sockaddr_dl *)*sap;
 struct interface *ifp;

 if (sdl == ((void*)0))
  return 0;
 if ((sdl)->sdl_family == AF_INET)
  return 1;
 if ((sdl)->sdl_family != AF_LINK)
  return 0;

 ifp = ifwithindex(sdl->sdl_index, 1);
 if (ifp == ((void*)0))
  return 0;

 rsin->sin_addr.s_addr = ifp->int_addr;



 rsin->sin_family = AF_INET;
 *sap = (struct sockaddr*)rsin;

 return 1;
}
