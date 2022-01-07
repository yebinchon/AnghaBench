
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zv_volmode; scalar_t__ zv_total_opens; int zv_name; struct cdev* zv_dev; int zv_flags; struct g_provider* zv_provider; int zv_volsize; } ;
typedef TYPE_1__ zvol_state_t ;
struct make_dev_args {int mda_flags; int mda_mode; TYPE_1__* mda_si_drv2; int mda_gid; int mda_uid; int * mda_cr; int * mda_devsw; } ;
struct g_provider {int flags; TYPE_1__* private; int mediasize; int sectorsize; struct g_geom* geom; } ;
struct g_geom {int dummy; } ;
struct cdev {int si_iosize_max; } ;


 int ASSERT (int ) ;
 int DEV_BSIZE ;
 int ENXIO ;
 int GID_OPERATOR ;
 int G_PF_DIRECT_RECEIVE ;
 int G_PF_DIRECT_SEND ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_WAITOK ;
 int MAXPHYS ;
 int MUTEX_HELD (int *) ;
 int UID_ROOT ;
 scalar_t__ ZFS_VOLMODE_DEV ;
 scalar_t__ ZFS_VOLMODE_GEOM ;
 int ZVOL_DRIVER ;
 int ZVOL_EXCL ;
 int destroy_dev (struct cdev*) ;
 int g_error_provider (struct g_provider*,int ) ;
 struct g_provider* g_new_providerf (struct g_geom*,char*,int ,char const*) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int g_wither_provider (struct g_provider*,int ) ;
 int make_dev_args_init (struct make_dev_args*) ;
 scalar_t__ make_dev_s (struct make_dev_args*,struct cdev**,char*,int ,char const*) ;
 int strlcpy (int ,char const*,int) ;
 int zfsdev_state_lock ;
 int zvol_cdevsw ;
 int zvol_last_close (TYPE_1__*) ;

__attribute__((used)) static void
zvol_rename_minor(zvol_state_t *zv, const char *newname)
{
 struct g_geom *gp;
 struct g_provider *pp;
 struct cdev *dev;

 ASSERT(MUTEX_HELD(&zfsdev_state_lock));

 if (zv->zv_volmode == ZFS_VOLMODE_GEOM) {
  g_topology_lock();
  pp = zv->zv_provider;
  ASSERT(pp != ((void*)0));
  gp = pp->geom;
  ASSERT(gp != ((void*)0));

  zv->zv_provider = ((void*)0);
  g_wither_provider(pp, ENXIO);

  pp = g_new_providerf(gp, "%s/%s", ZVOL_DRIVER, newname);
  pp->flags |= G_PF_DIRECT_RECEIVE | G_PF_DIRECT_SEND;
  pp->sectorsize = DEV_BSIZE;
  pp->mediasize = zv->zv_volsize;
  pp->private = zv;
  zv->zv_provider = pp;
  g_error_provider(pp, 0);
  g_topology_unlock();
 } else if (zv->zv_volmode == ZFS_VOLMODE_DEV) {
  struct make_dev_args args;

  if ((dev = zv->zv_dev) != ((void*)0)) {
   zv->zv_dev = ((void*)0);
   destroy_dev(dev);
   if (zv->zv_total_opens > 0) {
    zv->zv_flags &= ~ZVOL_EXCL;
    zv->zv_total_opens = 0;
    zvol_last_close(zv);
   }
  }

  make_dev_args_init(&args);
  args.mda_flags = MAKEDEV_CHECKNAME | MAKEDEV_WAITOK;
  args.mda_devsw = &zvol_cdevsw;
  args.mda_cr = ((void*)0);
  args.mda_uid = UID_ROOT;
  args.mda_gid = GID_OPERATOR;
  args.mda_mode = 0640;
  args.mda_si_drv2 = zv;
  if (make_dev_s(&args, &zv->zv_dev,
      "%s/%s", ZVOL_DRIVER, newname) == 0)
   zv->zv_dev->si_iosize_max = MAXPHYS;
 }
 strlcpy(zv->zv_name, newname, sizeof(zv->zv_name));
}
