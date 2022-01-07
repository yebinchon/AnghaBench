
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int sa_family; } ;
struct ifreq {TYPE_1__ ifr_addr; } ;


 int copyin (struct ifreq*,struct ifreq*,size_t) ;
 int copyout (struct ifreq*,struct ifreq*,size_t) ;

__attribute__((used)) static int
bsd_to_linux_ifreq(struct ifreq *arg)
{
 struct ifreq ifr;
 size_t ifr_len = sizeof(struct ifreq);
 int error;

 if ((error = copyin(arg, &ifr, ifr_len)))
  return (error);

 *(u_short *)&ifr.ifr_addr = ifr.ifr_addr.sa_family;

 error = copyout(&ifr, arg, ifr_len);

 return (error);
}
