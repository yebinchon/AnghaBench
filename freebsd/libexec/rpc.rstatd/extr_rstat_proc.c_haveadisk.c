
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statinfo {struct devinfo* dinfo; } ;
struct devinfo {int numdevs; struct devinfo* mem_ptr; TYPE_1__* devices; } ;
struct TYPE_2__ {int device_type; } ;


 int DEVSTAT_TYPE_DIRECT ;
 int DEVSTAT_TYPE_MASK ;
 int DEVSTAT_TYPE_PASS ;
 int LOG_ERR ;
 int bzero (struct devinfo*,int) ;
 scalar_t__ devstat_checkversion (int *) ;
 int devstat_errbuf ;
 int devstat_getdevs (int *,struct statinfo*) ;
 int devstat_getnumdevs (int *) ;
 int exit (int) ;
 int free (struct devinfo*) ;
 scalar_t__ malloc (int) ;
 int syslog (int ,char*,int ) ;

int
haveadisk(void)
{
 register int i;
 struct statinfo stats;
 int num_devices, retval = 0;

 if ((num_devices = devstat_getnumdevs(((void*)0))) < 0) {
  syslog(LOG_ERR, "rstatd: can't get number of devices: %s",
         devstat_errbuf);
  exit(1);
 }

 if (devstat_checkversion(((void*)0)) < 0) {
  syslog(LOG_ERR, "rstatd: %s", devstat_errbuf);
  exit(1);
 }

 stats.dinfo = (struct devinfo *)malloc(sizeof(struct devinfo));
 bzero(stats.dinfo, sizeof(struct devinfo));

 if (devstat_getdevs(((void*)0), &stats) == -1) {
  syslog(LOG_ERR, "rstatd: can't get device list: %s",
         devstat_errbuf);
  exit(1);
 }
 for (i = 0; i < stats.dinfo->numdevs; i++) {
  if (((stats.dinfo->devices[i].device_type
        & DEVSTAT_TYPE_MASK) == DEVSTAT_TYPE_DIRECT)
   && ((stats.dinfo->devices[i].device_type
        & DEVSTAT_TYPE_PASS) == 0)) {
   retval = 1;
   break;
  }
 }

 if (stats.dinfo->mem_ptr)
  free(stats.dinfo->mem_ptr);

 free(stats.dinfo);
 return(retval);
}
