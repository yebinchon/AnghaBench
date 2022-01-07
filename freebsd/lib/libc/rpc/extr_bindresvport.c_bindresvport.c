
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int bindresvport_sa (int,struct sockaddr*) ;

int
bindresvport(int sd, struct sockaddr_in *sin)
{
 return bindresvport_sa(sd, (struct sockaddr *)sin);
}
