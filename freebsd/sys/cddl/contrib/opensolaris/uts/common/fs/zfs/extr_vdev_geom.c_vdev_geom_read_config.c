
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* vp_nvlist; } ;
typedef TYPE_1__ vdev_phys_t ;
typedef int vdev_label_t ;
typedef scalar_t__ uint64_t ;
struct g_provider {scalar_t__ mediasize; int sectorsize; int name; } ;
struct g_consumer {struct g_provider* provider; } ;
typedef int off_t ;
typedef int nvlist_t ;


 int ASSERT (int) ;
 int BIO_READ ;
 int KM_SLEEP ;
 scalar_t__ P2ALIGN (scalar_t__,scalar_t__) ;
 scalar_t__ POOL_STATE_L2CACHE ;
 scalar_t__ POOL_STATE_SPARE ;
 int VDEV_LABELS ;
 int VDEV_SKIP_SIZE ;
 int ZFS_LOG (int,char*,int ) ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int ZPOOL_CONFIG_POOL_TXG ;
 int g_topology_assert_not () ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ nvlist_unpack (char*,size_t,int **,int ) ;
 int vdev_geom_io (struct g_consumer*,int*,void**,int*,int*,int*,int) ;
 int vdev_label_offset (scalar_t__,int,int ) ;

__attribute__((used)) static int
vdev_geom_read_config(struct g_consumer *cp, nvlist_t **configp)
{
 struct g_provider *pp;
 nvlist_t *config;
 vdev_phys_t *vdev_lists[VDEV_LABELS];
 char *buf;
 size_t buflen;
 uint64_t psize, state, txg;
 off_t offsets[VDEV_LABELS];
 off_t size;
 off_t sizes[VDEV_LABELS];
 int cmds[VDEV_LABELS];
 int errors[VDEV_LABELS];
 int l, nlabels;

 g_topology_assert_not();

 pp = cp->provider;
 ZFS_LOG(1, "Reading config from %s...", pp->name);

 psize = pp->mediasize;
 psize = P2ALIGN(psize, (uint64_t)sizeof(vdev_label_t));

 size = sizeof(*vdev_lists[0]) + pp->sectorsize -
     ((sizeof(*vdev_lists[0]) - 1) % pp->sectorsize) - 1;

 buflen = sizeof(vdev_lists[0]->vp_nvlist);


 for (l = 0; l < VDEV_LABELS; l++) {
  cmds[l] = BIO_READ;
  vdev_lists[l] = kmem_alloc(size, KM_SLEEP);
  offsets[l] = vdev_label_offset(psize, l, 0) + VDEV_SKIP_SIZE;
  sizes[l] = size;
  errors[l] = 0;
  ASSERT(offsets[l] % pp->sectorsize == 0);
 }


 vdev_geom_io(cp, cmds, (void**)vdev_lists, offsets, sizes, errors,
     VDEV_LABELS);


 config = *configp = ((void*)0);
 nlabels = 0;
 for (l = 0; l < VDEV_LABELS; l++) {
  if (errors[l] != 0)
   continue;

  buf = vdev_lists[l]->vp_nvlist;

  if (nvlist_unpack(buf, buflen, &config, 0) != 0)
   continue;

  if (nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_STATE,
      &state) != 0 || state > POOL_STATE_L2CACHE) {
   nvlist_free(config);
   continue;
  }

  if (state != POOL_STATE_SPARE &&
      state != POOL_STATE_L2CACHE &&
      (nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_TXG,
      &txg) != 0 || txg == 0)) {
   nvlist_free(config);
   continue;
  }

  if (*configp != ((void*)0))
   nvlist_free(*configp);
  *configp = config;

  nlabels++;
 }


 for (l = 0; l < VDEV_LABELS; l++)
  kmem_free(vdev_lists[l], size);

 return (nlabels);
}
