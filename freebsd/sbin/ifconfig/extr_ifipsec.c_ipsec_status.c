
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_3__ {scalar_t__ ifr_data; } ;


 int IPSECGREQID ;
 TYPE_1__ ifr ;
 int ioctl (int,int ,TYPE_1__*) ;
 int printf (char*,int) ;

__attribute__((used)) static void
ipsec_status(int s)
{
 uint32_t reqid;

 ifr.ifr_data = (caddr_t)&reqid;
 if (ioctl(s, IPSECGREQID, &ifr) == -1)
  return;
 printf("\treqid: %u\n", reqid);
}
