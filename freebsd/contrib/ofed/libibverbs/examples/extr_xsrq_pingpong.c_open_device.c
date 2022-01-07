
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_device {int dummy; } ;
struct TYPE_2__ {int context; } ;


 TYPE_1__ ctx ;
 int fprintf (int ,char*,...) ;
 int ibv_free_device_list (struct ibv_device**) ;
 struct ibv_device** ibv_get_device_list (int *) ;
 char* ibv_get_device_name (struct ibv_device*) ;
 int ibv_open_device (struct ibv_device*) ;
 int stderr ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int open_device(char *ib_devname)
{
 struct ibv_device **dev_list;
 int i = 0;

 dev_list = ibv_get_device_list(((void*)0));
 if (!dev_list) {
  fprintf(stderr, "Failed to get IB devices list");
  return -1;
 }

 if (ib_devname) {
  for (; dev_list[i]; ++i) {
   if (!strcmp(ibv_get_device_name(dev_list[i]), ib_devname))
    break;
  }
 }
 if (!dev_list[i]) {
  fprintf(stderr, "IB device %s not found\n",
   ib_devname ? ib_devname : "");
  return -1;
 }

 ctx.context = ibv_open_device(dev_list[i]);
 if (!ctx.context) {
  fprintf(stderr, "Couldn't get context for %s\n",
   ibv_get_device_name(dev_list[i]));
  return -1;
 }

 ibv_free_device_list(dev_list);
 return 0;
}
