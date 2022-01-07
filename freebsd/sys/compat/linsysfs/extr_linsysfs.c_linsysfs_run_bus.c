
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_host_queue {char* path; char* name; } ;
struct pfs_node {char* pn_data; } ;
struct TYPE_2__ {int bus; int slot; int func; scalar_t__ baseclass; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef char device_t ;
typedef int * devclass_t ;


 int DRMN_DEV ;
 int MAXPATHLEN ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_WAITOK ;
 scalar_t__ PCIC_DISPLAY ;
 scalar_t__ PCIC_STORAGE ;
 int PCI_DEV ;
 int PFS_RD ;
 int TAILQ_INSERT_TAIL (int *,struct scsi_host_queue*,int ) ;
 int bcopy (char*,char*,int) ;
 char* devclass_get_name (int *) ;
 int device_get_children (char,char**,int*) ;
 int * device_get_devclass (char) ;
 struct pci_devinfo* device_get_ivars (char) ;
 char device_get_parent (char) ;
 int device_get_unit (char) ;
 int free (char*,int ) ;
 int host_number ;
 int linsysfs_fill_config ;
 int linsysfs_fill_data ;
 int linsysfs_fill_device ;
 int linsysfs_fill_revid ;
 int linsysfs_fill_subdevice ;
 int linsysfs_fill_subvendor ;
 int linsysfs_fill_uevent_drm ;
 int linsysfs_fill_uevent_pci ;
 int linsysfs_fill_vendor ;
 int linsysfs_fill_vgapci ;
 int linsysfs_link_scsi_host ;
 int linsysfs_scsiname ;
 char* linux_driver_get_name_dev (char) ;
 void* malloc (int,int ,int ) ;
 struct pfs_node* pfs_create_dir (struct pfs_node*,char*,int *,int *,int *,int ) ;
 struct pfs_node* pfs_create_file (struct pfs_node*,char*,int *,int *,int *,int *,int ) ;
 struct pfs_node* pfs_create_link (struct pfs_node*,char*,int *,int *,int *,int *,int ) ;
 int scsi_host_next ;
 int scsi_host_q ;
 int sprintf (char*,char*,...) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
linsysfs_run_bus(device_t dev, struct pfs_node *dir, struct pfs_node *scsi,
    struct pfs_node *chardev, struct pfs_node *drm, char *path, char *prefix)
{
 struct scsi_host_queue *scsi_host;
 struct pfs_node *sub_dir, *cur_file;
 int i, nchildren, error;
 device_t *children, parent;
 devclass_t devclass;
 const char *name = ((void*)0);
 struct pci_devinfo *dinfo;
 char *device, *host, *new_path, *devname;

 new_path = path;
 devname = malloc(16, M_TEMP, M_WAITOK);

 parent = device_get_parent(dev);
 if (parent) {
  devclass = device_get_devclass(parent);
  if (devclass != ((void*)0))
   name = devclass_get_name(devclass);
  if (name && strcmp(name, PCI_DEV) == 0) {
   dinfo = device_get_ivars(dev);
   if (dinfo) {
    device = malloc(MAXPATHLEN, M_TEMP, M_WAITOK);
    new_path = malloc(MAXPATHLEN, M_TEMP,
        M_WAITOK);
    new_path[0] = '\000';
    strcpy(new_path, path);
    host = malloc(MAXPATHLEN, M_TEMP, M_WAITOK);
    device[0] = '\000';
    sprintf(device, "%s:%02x:%02x.%x",
        prefix,
        dinfo->cfg.bus,
        dinfo->cfg.slot,
        dinfo->cfg.func);
    strcat(new_path, "/");
    strcat(new_path, device);
    dir = pfs_create_dir(dir, device,
        ((void*)0), ((void*)0), ((void*)0), 0);
    cur_file = pfs_create_file(dir, "vendor",
        &linsysfs_fill_vendor, ((void*)0), ((void*)0), ((void*)0),
        PFS_RD);
    cur_file->pn_data = (void*)dev;
    cur_file = pfs_create_file(dir, "device",
        &linsysfs_fill_device, ((void*)0), ((void*)0), ((void*)0),
        PFS_RD);
    cur_file->pn_data = (void*)dev;
    cur_file = pfs_create_file(dir,
        "subsystem_vendor",
        &linsysfs_fill_subvendor, ((void*)0), ((void*)0), ((void*)0),
        PFS_RD);
    cur_file->pn_data = (void*)dev;
    cur_file = pfs_create_file(dir,
        "subsystem_device",
        &linsysfs_fill_subdevice, ((void*)0), ((void*)0), ((void*)0),
        PFS_RD);
    cur_file->pn_data = (void*)dev;
    cur_file = pfs_create_file(dir, "revision",
        &linsysfs_fill_revid, ((void*)0), ((void*)0), ((void*)0),
        PFS_RD);
    cur_file->pn_data = (void*)dev;
    cur_file = pfs_create_file(dir, "config",
        &linsysfs_fill_config, ((void*)0), ((void*)0), ((void*)0),
        PFS_RD);
    cur_file->pn_data = (void*)dev;
    cur_file = pfs_create_file(dir, "uevent",
        &linsysfs_fill_uevent_pci, ((void*)0), ((void*)0),
        ((void*)0), PFS_RD);
    cur_file->pn_data = (void*)dev;
    cur_file = pfs_create_link(dir, "subsystem",
        &linsysfs_fill_data, ((void*)0), ((void*)0), ((void*)0), 0);

    cur_file->pn_data = "/sys/bus/pci";

    if (dinfo->cfg.baseclass == PCIC_STORAGE) {

     sprintf(host, "host%d", host_number++);
     strcat(new_path, "/");
     strcat(new_path, host);
     pfs_create_dir(dir, host,
         ((void*)0), ((void*)0), ((void*)0), 0);
     scsi_host = malloc(sizeof(
         struct scsi_host_queue),
         M_DEVBUF, M_NOWAIT);
     scsi_host->path = malloc(
         strlen(new_path) + 1,
         M_DEVBUF, M_NOWAIT);
     scsi_host->path[0] = '\000';
     bcopy(new_path, scsi_host->path,
         strlen(new_path) + 1);
     scsi_host->name = "unknown";

     sub_dir = pfs_create_dir(scsi, host,
         ((void*)0), ((void*)0), ((void*)0), 0);
     pfs_create_link(sub_dir, "device",
         &linsysfs_link_scsi_host,
         ((void*)0), ((void*)0), ((void*)0), 0);
     pfs_create_file(sub_dir, "proc_name",
         &linsysfs_scsiname,
         ((void*)0), ((void*)0), ((void*)0), PFS_RD);
     scsi_host->name
         = linux_driver_get_name_dev(dev);
     TAILQ_INSERT_TAIL(&scsi_host_q,
         scsi_host, scsi_host_next);
    }
    free(device, M_TEMP);
    free(host, M_TEMP);
   }
  }

  devclass = device_get_devclass(dev);
  if (devclass != ((void*)0))
   name = devclass_get_name(devclass);
  else
   name = ((void*)0);
  if (name != ((void*)0) && strcmp(name, DRMN_DEV) == 0 &&
      device_get_unit(dev) >= 0) {
   dinfo = device_get_ivars(parent);
   if (dinfo != ((void*)0) && dinfo->cfg.baseclass == PCIC_DISPLAY) {
    pfs_create_dir(dir, "drm", ((void*)0), ((void*)0), ((void*)0), 0);
    sprintf(devname, "226:%d",
        device_get_unit(dev));
    sub_dir = pfs_create_dir(chardev,
        devname, ((void*)0), ((void*)0), ((void*)0), 0);
    cur_file = pfs_create_link(sub_dir,
        "device", &linsysfs_fill_vgapci, ((void*)0),
        ((void*)0), ((void*)0), PFS_RD);
    cur_file->pn_data = (void*)dir;
    cur_file = pfs_create_file(sub_dir,
        "uevent", &linsysfs_fill_uevent_drm, ((void*)0),
        ((void*)0), ((void*)0), PFS_RD);
    cur_file->pn_data = (void*)dev;
    sprintf(devname, "card%d",
        device_get_unit(dev));
    sub_dir = pfs_create_dir(drm,
        devname, ((void*)0), ((void*)0), ((void*)0), 0);
    cur_file = pfs_create_link(sub_dir,
        "device", &linsysfs_fill_vgapci, ((void*)0),
        ((void*)0), ((void*)0), PFS_RD);
    cur_file->pn_data = (void*)dir;
   }
  }
 }

 error = device_get_children(dev, &children, &nchildren);
 if (error == 0) {
  for (i = 0; i < nchildren; i++)
   if (children[i])
    linsysfs_run_bus(children[i], dir, scsi,
        chardev, drm, new_path, prefix);
  free(children, M_TEMP);
 }
 if (new_path != path)
  free(new_path, M_TEMP);
 free(devname, M_TEMP);

 return (1);
}
