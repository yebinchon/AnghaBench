
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int dva_t ;


 int ASSERT (int ) ;
 int DVA_GET_ASIZE (int const*) ;
 scalar_t__ DVA_GET_GANG (int const*) ;
 int DVA_GET_OFFSET (int const*) ;
 int DVA_GET_VDEV (int const*) ;
 int DVA_IS_VALID (int const*) ;
 int ENXIO ;
 int SET_ERROR (int ) ;
 int SPA_GANGBLOCKSIZE ;
 int metaslab_claim_impl (int *,int ,int ,int ) ;
 int * vdev_lookup_top (int *,int ) ;
 int vdev_psize_to_asize (int *,int ) ;

__attribute__((used)) static int
metaslab_claim_dva(spa_t *spa, const dva_t *dva, uint64_t txg)
{
 uint64_t vdev = DVA_GET_VDEV(dva);
 uint64_t offset = DVA_GET_OFFSET(dva);
 uint64_t size = DVA_GET_ASIZE(dva);
 vdev_t *vd;

 if ((vd = vdev_lookup_top(spa, vdev)) == ((void*)0)) {
  return (SET_ERROR(ENXIO));
 }

 ASSERT(DVA_IS_VALID(dva));

 if (DVA_GET_GANG(dva))
  size = vdev_psize_to_asize(vd, SPA_GANGBLOCKSIZE);

 return (metaslab_claim_impl(vd, offset, size, txg));
}
