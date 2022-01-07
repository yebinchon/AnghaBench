
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptsstat {int devname; int dev; } ;
struct procstat {int dummy; } ;
struct freebsd11_ptsstat {int devname; int dev; } ;
struct filestat {int dummy; } ;


 int memcpy (int ,int ,int) ;
 int procstat_get_pts_info (struct procstat*,struct filestat*,struct ptsstat*,char*) ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;
 int trunc_name ;

int
freebsd11_procstat_get_pts_info(struct procstat *procstat,
    struct filestat *fst, struct freebsd11_ptsstat *pts_compat, char *errbuf)
{
 struct ptsstat pts;
 int r;

 r = procstat_get_pts_info(procstat, fst, &pts, errbuf);
 if (r != 0)
  return (r);
 pts_compat->dev = pts.dev;
 if (strlen(pts.devname) >= sizeof(pts_compat->devname))
  strcpy(pts_compat->devname, trunc_name);
 else
  memcpy(pts_compat->devname, pts.devname,
      sizeof(pts_compat->devname));
 return (0);
}
