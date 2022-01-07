
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int SIOCDIFPHYADDR ;
 int err (int,char*) ;
 int ifr ;
 scalar_t__ ioctl (int,int ,int *) ;

__attribute__((used)) static void
deletetunnel(const char *vname, int param, int s, const struct afswtch *afp)
{

 if (ioctl(s, SIOCDIFPHYADDR, &ifr) < 0)
  err(1, "SIOCDIFPHYADDR");
}
