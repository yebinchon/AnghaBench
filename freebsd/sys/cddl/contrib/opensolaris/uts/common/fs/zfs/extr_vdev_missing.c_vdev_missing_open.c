
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef scalar_t__ uint64_t ;



__attribute__((used)) static int
vdev_missing_open(vdev_t *vd, uint64_t *psize, uint64_t *max_psize,
    uint64_t *logical_ashift, uint64_t *physical_ashift)
{






 *psize = 0;
 *max_psize = 0;
 *logical_ashift = 0;
 *physical_ashift = 0;
 return (0);
}
