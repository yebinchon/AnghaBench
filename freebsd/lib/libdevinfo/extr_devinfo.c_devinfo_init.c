
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubus ;
struct u_businfo {scalar_t__ ub_version; int ub_generation; } ;


 scalar_t__ BUS_USER_VERSION ;
 int EINVAL ;
 int TAILQ_INIT (int *) ;
 int debug (char*,...) ;
 int devinfo_dev ;
 int devinfo_free () ;
 scalar_t__ devinfo_generation ;
 int devinfo_init_devices (scalar_t__) ;
 int devinfo_init_resources (scalar_t__) ;
 int devinfo_initted ;
 int devinfo_res ;
 int devinfo_rman ;
 int errno ;
 scalar_t__ sysctlbyname (char*,struct u_businfo*,size_t*,int *,int ) ;
 int warn (char*) ;
 int warnx (char*,scalar_t__,scalar_t__) ;

int
devinfo_init(void)
{
 struct u_businfo ubus;
 size_t ub_size;
 int error, retries;

 if (!devinfo_initted) {
  TAILQ_INIT(&devinfo_dev);
  TAILQ_INIT(&devinfo_rman);
  TAILQ_INIT(&devinfo_res);
 }





 for (retries = 0; retries < 10; retries++) {
  debug("get interface version");
  ub_size = sizeof(ubus);
  if (sysctlbyname("hw.bus.info", &ubus,
      &ub_size, ((void*)0), 0) != 0) {
   warn("sysctlbyname(\"hw.bus.info\", ...) failed");
   return(EINVAL);
  }
  if ((ub_size != sizeof(ubus)) ||
      (ubus.ub_version != BUS_USER_VERSION)) {
   warnx("kernel bus interface version mismatch: kernel %d expected %d",
       ubus.ub_version, BUS_USER_VERSION);
   return(EINVAL);
  }
  debug("generation count is %d", ubus.ub_generation);




  if (ubus.ub_generation == devinfo_generation)
   return(0);




  devinfo_free();
  devinfo_initted = 0;
  devinfo_generation = 0;

  if ((error = devinfo_init_devices(ubus.ub_generation)) != 0) {
   devinfo_free();
   if (error == EINVAL)
    continue;
   break;
  }
  if ((error = devinfo_init_resources(ubus.ub_generation)) != 0) {
   devinfo_free();
   if (error == EINVAL)
    continue;
   break;
  }
  devinfo_initted = 1;
  devinfo_generation = ubus.ub_generation;
  return(0);
 }
 debug("scan failed after %d retries", retries);
 errno = error;
 return(1);
}
