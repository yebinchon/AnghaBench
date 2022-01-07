
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ipfo_size; scalar_t__ ipfo_offset; int * ipfo_ptr; int ipfo_type; int ipfo_rev; } ;
typedef TYPE_1__ ipfobj_t ;
typedef int friostat_t ;
typedef int fio ;


 int IPFILTER_VERSION ;
 int IPFOBJ_IPFSTAT ;
 int SIOCFRZST ;
 int exit (int) ;
 int fd ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int ipferror (int ,char*) ;
 int ipfname ;
 int opendevice (int ,int) ;
 int showstats (int *) ;

void zerostats()
{
 ipfobj_t obj;
 friostat_t fio;

 obj.ipfo_rev = IPFILTER_VERSION;
 obj.ipfo_type = IPFOBJ_IPFSTAT;
 obj.ipfo_size = sizeof(fio);
 obj.ipfo_ptr = &fio;
 obj.ipfo_offset = 0;

 if (opendevice(ipfname, 1) != -2) {
  if (ioctl(fd, SIOCFRZST, &obj) == -1) {
   ipferror(fd, "ioctl(SIOCFRZST)");
   exit(-1);
  }
  showstats(&fio);
 }

}
