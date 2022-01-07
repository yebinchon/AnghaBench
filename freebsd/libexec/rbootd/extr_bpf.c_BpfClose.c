
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sa_data; int sa_family; scalar_t__ sa_len; } ;
struct ifreq {TYPE_1__ ifr_addr; } ;
typedef int caddr_t ;


 int AF_UNSPEC ;
 int BIOCPROMISC ;
 int BpfFd ;
 int * BpfPkt ;
 scalar_t__ RMP_ADDRLEN ;
 int * RmpMcastAddr ;
 int SIOCDELMULTI ;
 int close (int) ;
 int free (char*) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int memmove (char*,int *,scalar_t__) ;

void
BpfClose(void)
{
 struct ifreq ifr;

 if (BpfPkt != ((void*)0)) {
  free((char *)BpfPkt);
  BpfPkt = ((void*)0);
 }

 if (BpfFd == -1)
  return;




 ifr.ifr_addr.sa_family = AF_UNSPEC;
 memmove((char *)&ifr.ifr_addr.sa_data[0], &RmpMcastAddr[0], RMP_ADDRLEN);
 if (ioctl(BpfFd, SIOCDELMULTI, (caddr_t)&ifr) < 0)
  (void) ioctl(BpfFd, BIOCPROMISC, (caddr_t)0);

 (void) close(BpfFd);
 BpfFd = -1;
}
