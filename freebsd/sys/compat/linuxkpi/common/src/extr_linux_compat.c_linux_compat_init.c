
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct TYPE_9__ {char* name; } ;
struct TYPE_8__ {void* oidp; } ;
struct TYPE_7__ {int bsddev; TYPE_2__ kobj; } ;


 int CPUID_CLFSH ;
 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int INIT_LIST_HEAD (int *) ;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int OID_AUTO ;
 void* SYSCTL_ADD_NODE (int *,int ,int ,char*,int,int *,char*) ;
 struct sysctl_oid* SYSCTL_ADD_ROOT_NODE (int *,int ,char*,int,int *,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int VMMAP_HASH_SIZE ;
 int class_register (TYPE_3__*) ;
 int cpu_feature ;
 int kobject_init (TYPE_2__*,int *) ;
 int kobject_set_name (TYPE_2__*,char*) ;
 int linux_class_ktype ;
 TYPE_3__ linux_class_misc ;
 TYPE_2__ linux_class_root ;
 int linux_cpu_has_clflush ;
 int linux_dev_ktype ;
 TYPE_1__ linux_root_device ;
 int linux_vma_lock ;
 int mtx_init (int *,char*,int *,int ) ;
 int pci_devices ;
 int pci_drivers ;
 int pci_lock ;
 int root_bus ;
 int rw_init (int *,char*) ;
 int spin_lock_init (int *) ;
 int * vmmaphead ;
 int vmmaplock ;

__attribute__((used)) static void
linux_compat_init(void *arg)
{
 struct sysctl_oid *rootoid;
 int i;


 linux_cpu_has_clflush = (cpu_feature & CPUID_CLFSH);

 rw_init(&linux_vma_lock, "lkpi-vma-lock");

 rootoid = SYSCTL_ADD_ROOT_NODE(((void*)0),
     OID_AUTO, "sys", CTLFLAG_RD|CTLFLAG_MPSAFE, ((void*)0), "sys");
 kobject_init(&linux_class_root, &linux_class_ktype);
 kobject_set_name(&linux_class_root, "class");
 linux_class_root.oidp = SYSCTL_ADD_NODE(((void*)0), SYSCTL_CHILDREN(rootoid),
     OID_AUTO, "class", CTLFLAG_RD|CTLFLAG_MPSAFE, ((void*)0), "class");
 kobject_init(&linux_root_device.kobj, &linux_dev_ktype);
 kobject_set_name(&linux_root_device.kobj, "device");
 linux_root_device.kobj.oidp = SYSCTL_ADD_NODE(((void*)0),
     SYSCTL_CHILDREN(rootoid), OID_AUTO, "device", CTLFLAG_RD, ((void*)0),
     "device");
 linux_root_device.bsddev = root_bus;
 linux_class_misc.name = "misc";
 class_register(&linux_class_misc);
 INIT_LIST_HEAD(&pci_drivers);
 INIT_LIST_HEAD(&pci_devices);
 spin_lock_init(&pci_lock);
 mtx_init(&vmmaplock, "IO Map lock", ((void*)0), MTX_DEF);
 for (i = 0; i < VMMAP_HASH_SIZE; i++)
  LIST_INIT(&vmmaphead[i]);
}
