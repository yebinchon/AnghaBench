
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_osfp_ioctl {int fp_getnum; } ;
typedef int io ;


 int DIOCOSFPGET ;
 scalar_t__ EBUSY ;
 int classes ;
 scalar_t__ errno ;
 int import_fingerprint (struct pf_osfp_ioctl*) ;
 scalar_t__ ioctl (int,int ,struct pf_osfp_ioctl*) ;
 int memset (struct pf_osfp_ioctl*,int ,int) ;
 int pfctl_flush_my_fingerprints (int *) ;
 int warn (char*) ;

int
pfctl_load_fingerprints(int dev, int opts)
{
 struct pf_osfp_ioctl io;
 int i;

 pfctl_flush_my_fingerprints(&classes);

 for (i = 0; i >= 0; i++) {
  memset(&io, 0, sizeof(io));
  io.fp_getnum = i;
  if (ioctl(dev, DIOCOSFPGET, &io)) {
   if (errno == EBUSY)
    break;
   warn("DIOCOSFPGET");
   return (1);
  }
  import_fingerprint(&io);
 }
 return (0);
}
