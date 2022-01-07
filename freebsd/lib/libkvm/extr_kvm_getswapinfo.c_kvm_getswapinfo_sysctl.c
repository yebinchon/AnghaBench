
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xsd ;
typedef int tot ;
typedef scalar_t__ swblk_t ;
typedef int swap_ary ;
struct xswdev {scalar_t__ xsw_version; scalar_t__ xsw_used; int xsw_dev; int xsw_flags; scalar_t__ xsw_nblks; } ;
struct kvm_swap {scalar_t__ ksw_used; scalar_t__ ksw_total; int ksw_devname; int ksw_flags; } ;
struct TYPE_5__ {int program; } ;
typedef TYPE_1__ kvm_t ;


 scalar_t__ ENOENT ;
 int GETSWDEVNAME (int ,int ,int) ;
 int GETSYSCTL (TYPE_1__*,char*,scalar_t__) ;
 int SWI_MAXMIB ;
 scalar_t__ XSWDEV_VERSION ;
 int _kvm_err (TYPE_1__*,int ,char*,...) ;
 int bzero (struct kvm_swap*,int) ;
 scalar_t__ dmmax ;
 scalar_t__ errno ;
 int strerror (scalar_t__) ;
 int sysctl (int*,size_t,struct xswdev*,size_t*,int *,int ) ;
 int sysctlnametomib (char*,int*,size_t*) ;
 int unswdev ;

int
kvm_getswapinfo_sysctl(kvm_t *kd, struct kvm_swap *swap_ary, int swap_max,
    int flags)
{
 int ti;
 swblk_t ttl;
 size_t mibi, len;
 int soid[SWI_MAXMIB];
 struct xswdev xsd;
 struct kvm_swap tot;

 if (!GETSYSCTL(kd, "vm.dmmax", dmmax))
  return -1;

 mibi = SWI_MAXMIB - 1;
 if (sysctlnametomib("vm.swap_info", soid, &mibi) == -1) {
  _kvm_err(kd, kd->program, "sysctlnametomib failed: %s",
      strerror(errno));
  return -1;
 }
 bzero(&tot, sizeof(tot));
 for (unswdev = 0;; unswdev++) {
  soid[mibi] = unswdev;
  len = sizeof(xsd);
  if (sysctl(soid, mibi + 1, &xsd, &len, ((void*)0), 0) == -1) {
   if (errno == ENOENT)
    break;
   _kvm_err(kd, kd->program, "cannot read sysctl: %s.",
       strerror(errno));
   return -1;
  }
  if (len != sizeof(xsd)) {
   _kvm_err(kd, kd->program, "struct xswdev has unexpected "
       "size;  kernel and libkvm out of sync?");
   return -1;
  }
  if (xsd.xsw_version != XSWDEV_VERSION) {
   _kvm_err(kd, kd->program, "struct xswdev version "
       "mismatch; kernel and libkvm out of sync?");
   return -1;
  }

  ttl = xsd.xsw_nblks - dmmax;
  if (unswdev < swap_max - 1) {
   bzero(&swap_ary[unswdev], sizeof(swap_ary[unswdev]));
   swap_ary[unswdev].ksw_total = ttl;
   swap_ary[unswdev].ksw_used = xsd.xsw_used;
   swap_ary[unswdev].ksw_flags = xsd.xsw_flags;
   GETSWDEVNAME(xsd.xsw_dev, swap_ary[unswdev].ksw_devname,
        flags);
  }
  tot.ksw_total += ttl;
  tot.ksw_used += xsd.xsw_used;
 }

 ti = unswdev;
 if (ti >= swap_max)
  ti = swap_max - 1;
 if (ti >= 0)
  swap_ary[ti] = tot;

        return(ti);
}
