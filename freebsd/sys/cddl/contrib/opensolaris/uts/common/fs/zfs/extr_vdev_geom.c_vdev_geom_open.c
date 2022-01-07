
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_14__ {int vs_aux; } ;
struct TYPE_15__ {char* vdev_path; scalar_t__ vdev_prevstate; int vdev_nowritecache; TYPE_1__ vdev_stat; TYPE_12__* vdev_spa; int vdev_reopening; struct g_consumer* vdev_tsd; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
struct g_provider {scalar_t__ sectorsize; char* name; int mediasize; int stripesize; scalar_t__ stripeoffset; } ;
struct g_consumer {scalar_t__ acw; struct g_provider* provider; int * private; } ;
struct consumer_vdev_elem {TYPE_2__* vd; } ;
struct consumer_priv_t {int dummy; } ;
struct TYPE_13__ {scalar_t__ spa_load_state; scalar_t__ spa_splitting_newspa; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int DROP_GIANT () ;
 int EINVAL ;
 int ENOENT ;
 int FWRITE ;
 scalar_t__ ISP2 (int) ;
 int MAX (int,int ) ;
 int M_WAITOK ;
 int M_ZERO ;
 int PICKUP_GIANT () ;
 int SLIST_INIT (struct consumer_priv_t*) ;
 int SLIST_INSERT_HEAD (struct consumer_priv_t*,struct consumer_vdev_elem*,int ) ;
 scalar_t__ SPA_LOAD_CREATE ;
 scalar_t__ SPA_LOAD_NONE ;
 int SPA_MAXASHIFT ;
 int SPA_MINBLOCKSIZE ;
 int VDEV_AUX_BAD_LABEL ;
 int VDEV_AUX_OPEN_FAILED ;
 scalar_t__ VDEV_PAD_SIZE ;
 scalar_t__ VDEV_STATE_UNKNOWN ;
 int VERIFY (int) ;
 int ZFS_LOG (int,char*,char*) ;
 int elems ;
 int g_access (struct g_consumer*,int ,int,int ) ;
 struct consumer_vdev_elem* g_malloc (int,int) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int highbit (int) ;
 int hz ;
 int printf (char*,char*,int) ;
 int spa_mode (TYPE_12__*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ tsd_set (int ,TYPE_2__*) ;
 int tsleep (TYPE_2__*,int ,char*,int) ;
 int vdev_dbgmsg (TYPE_2__*,char*,int) ;
 int vdev_geom_attrchanged (struct g_consumer*,char*) ;
 int vdev_geom_close_locked (TYPE_2__*) ;
 struct g_consumer* vdev_geom_open_by_guids (TYPE_2__*) ;
 struct g_consumer* vdev_geom_open_by_path (TYPE_2__*,int) ;
 int vdev_geom_set_physpath (TYPE_2__*,struct g_consumer*,int ) ;
 int vdev_geom_set_rotation_rate (TYPE_2__*,struct g_consumer*) ;
 int zfs_geom_probe_vdev_key ;

__attribute__((used)) static int
vdev_geom_open(vdev_t *vd, uint64_t *psize, uint64_t *max_psize,
    uint64_t *logical_ashift, uint64_t *physical_ashift)
{
 struct g_provider *pp;
 struct g_consumer *cp;
 size_t bufsize;
 int error;


 VERIFY(tsd_set(zfs_geom_probe_vdev_key, vd) == 0);




 if (vd->vdev_path == ((void*)0) || strncmp(vd->vdev_path, "/dev/", 5) != 0) {
  vd->vdev_stat.vs_aux = VDEV_AUX_BAD_LABEL;
  return (EINVAL);
 }





 if ((cp = vd->vdev_tsd) != ((void*)0)) {
  ASSERT(vd->vdev_reopening);
  goto skip_open;
 }

 DROP_GIANT();
 g_topology_lock();
 error = 0;

 if (vd->vdev_spa->spa_splitting_newspa ||
     (vd->vdev_prevstate == VDEV_STATE_UNKNOWN &&
      vd->vdev_spa->spa_load_state == SPA_LOAD_NONE ||
      vd->vdev_spa->spa_load_state == SPA_LOAD_CREATE)) {
  cp = vdev_geom_open_by_path(vd, 0);
 } else {




  cp = vdev_geom_open_by_path(vd, 1);
  if (cp == ((void*)0)) {






   cp = vdev_geom_open_by_guids(vd);
  }
 }


 VERIFY(tsd_set(zfs_geom_probe_vdev_key, ((void*)0)) == 0);

 if (cp == ((void*)0)) {
  ZFS_LOG(1, "Vdev %s not found.", vd->vdev_path);
  error = ENOENT;
 } else {
  struct consumer_priv_t *priv;
  struct consumer_vdev_elem *elem;
  int spamode;

  priv = (struct consumer_priv_t*)&cp->private;
  if (cp->private == ((void*)0))
   SLIST_INIT(priv);
  elem = g_malloc(sizeof(*elem), M_WAITOK|M_ZERO);
  elem->vd = vd;
  SLIST_INSERT_HEAD(priv, elem, elems);

  spamode = spa_mode(vd->vdev_spa);
  if (cp->provider->sectorsize > VDEV_PAD_SIZE ||
      !ISP2(cp->provider->sectorsize)) {
   ZFS_LOG(1, "Provider %s has unsupported sectorsize.",
       cp->provider->name);

   vdev_geom_close_locked(vd);
   error = EINVAL;
   cp = ((void*)0);
  } else if (cp->acw == 0 && (spamode & FWRITE) != 0) {
   int i;

   for (i = 0; i < 5; i++) {
    error = g_access(cp, 0, 1, 0);
    if (error == 0)
     break;
    g_topology_unlock();
    tsleep(vd, 0, "vdev", hz / 2);
    g_topology_lock();
   }
   if (error != 0) {
    printf("ZFS WARNING: Unable to open %s for writing (error=%d).\n",
        cp->provider->name, error);
    vdev_geom_close_locked(vd);
    cp = ((void*)0);
   }
  }
 }


 if (cp != ((void*)0)) {
  vdev_geom_attrchanged(cp, "GEOM::physpath");


  vdev_geom_set_physpath(vd, cp, B_FALSE);
  vdev_geom_set_rotation_rate(vd, cp);
 }

 g_topology_unlock();
 PICKUP_GIANT();
 if (cp == ((void*)0)) {
  vd->vdev_stat.vs_aux = VDEV_AUX_OPEN_FAILED;
  vdev_dbgmsg(vd, "vdev_geom_open: failed to open [error=%d]",
      error);
  return (error);
 }
skip_open:
 pp = cp->provider;




 *max_psize = *psize = pp->mediasize;





 *logical_ashift = highbit(MAX(pp->sectorsize, SPA_MINBLOCKSIZE)) - 1;
 *physical_ashift = 0;
 if (pp->stripesize > (1 << *logical_ashift) && ISP2(pp->stripesize) &&
     pp->stripesize <= (1 << SPA_MAXASHIFT) && pp->stripeoffset == 0)
  *physical_ashift = highbit(pp->stripesize) - 1;





 vd->vdev_nowritecache = B_FALSE;

 return (0);
}
