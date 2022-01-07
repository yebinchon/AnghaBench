
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_2__ {int * list; scalar_t__ single_object; int * lbh; } ;
typedef TYPE_1__ prop_data_t ;
typedef int nvlist_t ;
typedef int libbe_handle_t ;
typedef scalar_t__ boolean_t ;


 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int ZFS_PROP_CREATION ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_PROP_ORIGIN ;
 int ZFS_PROP_REFERENCED ;
 int ZFS_PROP_USED ;
 int ZFS_PROP_USEDDS ;
 int ZFS_PROP_USEDREFRESERV ;
 int ZFS_PROP_USEDSNAP ;
 int be_active_path (int *) ;
 int be_nextboot_path (int *) ;
 int nvlist_add_boolean_value (int *,char*,int) ;
 int nvlist_add_nvlist (int *,char const*,int *) ;
 int nvlist_add_string (int *,char*,char const*) ;
 int nvlist_alloc (int **,int ,int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 char* strrchr (char const*,char) ;
 char* zfs_get_name (int *) ;
 scalar_t__ zfs_is_mounted (int *,char**) ;
 scalar_t__ zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int) ;

int
prop_list_builder_cb(zfs_handle_t *zfs_hdl, void *data_p)
{
 char buf[512], *mountpoint;
 prop_data_t *data;
 libbe_handle_t *lbh;
 nvlist_t *props;
 const char *dataset, *name;
 boolean_t mounted;






 data = (prop_data_t *)data_p;
 lbh = data->lbh;

 if (data->single_object)
  props = data->list;
 else
  nvlist_alloc(&props, NV_UNIQUE_NAME, KM_SLEEP);

 dataset = zfs_get_name(zfs_hdl);
 nvlist_add_string(props, "dataset", dataset);

 name = strrchr(dataset, '/') + 1;
 nvlist_add_string(props, "name", name);

 mounted = zfs_is_mounted(zfs_hdl, &mountpoint);

 if (mounted)
  nvlist_add_string(props, "mounted", mountpoint);

 if (zfs_prop_get(zfs_hdl, ZFS_PROP_MOUNTPOINT, buf, 512,
     ((void*)0), ((void*)0), 0, 1) == 0)
  nvlist_add_string(props, "mountpoint", buf);

 if (zfs_prop_get(zfs_hdl, ZFS_PROP_ORIGIN, buf, 512,
     ((void*)0), ((void*)0), 0, 1) == 0)
  nvlist_add_string(props, "origin", buf);

 if (zfs_prop_get(zfs_hdl, ZFS_PROP_CREATION, buf, 512,
     ((void*)0), ((void*)0), 0, 1) == 0)
  nvlist_add_string(props, "creation", buf);

 nvlist_add_boolean_value(props, "active",
     (strcmp(be_active_path(lbh), dataset) == 0));

 if (zfs_prop_get(zfs_hdl, ZFS_PROP_USED, buf, 512,
     ((void*)0), ((void*)0), 0, 1) == 0)
  nvlist_add_string(props, "used", buf);

 if (zfs_prop_get(zfs_hdl, ZFS_PROP_USEDDS, buf, 512,
     ((void*)0), ((void*)0), 0, 1) == 0)
  nvlist_add_string(props, "usedds", buf);

 if (zfs_prop_get(zfs_hdl, ZFS_PROP_USEDSNAP, buf, 512,
     ((void*)0), ((void*)0), 0, 1) == 0)
  nvlist_add_string(props, "usedsnap", buf);

 if (zfs_prop_get(zfs_hdl, ZFS_PROP_USEDREFRESERV, buf, 512,
     ((void*)0), ((void*)0), 0, 1) == 0)
  nvlist_add_string(props, "usedrefreserv", buf);

 if (zfs_prop_get(zfs_hdl, ZFS_PROP_REFERENCED, buf, 512,
     ((void*)0), ((void*)0), 0, 1) == 0)
  nvlist_add_string(props, "referenced", buf);

 nvlist_add_boolean_value(props, "nextboot",
     (strcmp(be_nextboot_path(lbh), dataset) == 0));

 if (!data->single_object)
  nvlist_add_nvlist(data->list, name, props);

 return (0);
}
