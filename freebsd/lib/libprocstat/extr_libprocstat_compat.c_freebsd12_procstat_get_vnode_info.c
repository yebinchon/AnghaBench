
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnstat {int vn_devname; int vn_mode; int vn_type; int vn_fsid; int vn_dev; int vn_mntdir; int vn_size; int vn_fileid; } ;
struct procstat {int dummy; } ;
struct freebsd12_vnstat {int vn_devname; int vn_mode; int vn_type; int vn_fsid; int vn_dev; int vn_mntdir; int vn_size; int vn_fileid; } ;
struct filestat {int dummy; } ;


 int memcpy (int ,int ,int) ;
 int procstat_get_vnode_info (struct procstat*,struct filestat*,struct vnstat*,char*) ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;
 int trunc_name ;

int
freebsd12_procstat_get_vnode_info(struct procstat *procstat,
    struct filestat *fst, struct freebsd12_vnstat *vn_compat, char *errbuf)
{
 struct vnstat vn;
 int r;

 r = procstat_get_vnode_info(procstat, fst, &vn, errbuf);
 if (r != 0)
  return (r);
 vn_compat->vn_fileid = vn.vn_fileid;
 vn_compat->vn_size = vn.vn_size;
 vn_compat->vn_mntdir = vn.vn_mntdir;
 vn_compat->vn_dev = vn.vn_dev;
 vn_compat->vn_fsid = vn.vn_fsid;
 vn_compat->vn_type = vn.vn_type;
 vn_compat->vn_mode = vn.vn_mode;
 if (strlen(vn.vn_devname) >= sizeof(vn_compat->vn_devname))
  strcpy(vn_compat->vn_devname, trunc_name);
 else
  memcpy(vn_compat->vn_devname, vn.vn_devname,
      sizeof(vn_compat->vn_devname));
 return (0);
}
