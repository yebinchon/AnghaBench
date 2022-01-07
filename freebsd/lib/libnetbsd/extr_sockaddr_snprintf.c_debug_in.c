
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_family; int sin_port; TYPE_1__ sin_addr; } ;


 int SALEN (struct sockaddr_in const*) ;
 int snprintf (char*,size_t,char*,int,int,int,int) ;

__attribute__((used)) static int
debug_in(char *str, size_t len, const struct sockaddr_in *sin)
{
 return snprintf(str, len, "sin_len=%u, sin_family=%u, sin_port=%u, "
     "sin_addr.s_addr=%08x",
     SALEN(sin), sin->sin_family, sin->sin_port,
     sin->sin_addr.s_addr);
}
