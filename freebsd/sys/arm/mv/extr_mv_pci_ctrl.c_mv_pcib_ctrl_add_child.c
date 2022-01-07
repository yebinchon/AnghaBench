
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int obd_node; } ;
struct mv_pcib_ctrl_devinfo {int di_rl; TYPE_1__ di_dinfo; } ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_set_ivars (int *,struct mv_pcib_ctrl_devinfo*) ;
 struct mv_pcib_ctrl_devinfo* malloc (int,int ,int) ;
 int resource_list_init (int *) ;

__attribute__((used)) static device_t
mv_pcib_ctrl_add_child(device_t dev, u_int order, const char *name, int unit)
{
 device_t cdev;
 struct mv_pcib_ctrl_devinfo *di;

 cdev = device_add_child_ordered(dev, order, name, unit);
 if (cdev == ((void*)0))
  return (((void*)0));

 di = malloc(sizeof(*di), M_DEVBUF, M_WAITOK | M_ZERO);
 di->di_dinfo.obd_node = -1;
 resource_list_init(&di->di_rl);
 device_set_ivars(cdev, di);

 return (cdev);
}
