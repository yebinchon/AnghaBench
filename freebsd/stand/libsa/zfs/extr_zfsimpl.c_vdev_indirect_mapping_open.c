
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vim_havecounts; scalar_t__ dn_bonuslen; struct TYPE_6__* vim_dn; int * vim_entries; int vim_object; int * vim_objset; int * vim_phys; int * vim_spa; } ;
typedef TYPE_1__ vdev_indirect_mapping_t ;
typedef int vdev_indirect_mapping_phys_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int objset_phys_t ;


 scalar_t__ DN_BONUS (TYPE_1__*) ;
 scalar_t__ VDEV_INDIRECT_MAPPING_SIZE_V0 ;
 void* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int * malloc (int) ;
 int objset_get_dnode (int *,int *,int ,TYPE_1__*) ;

vdev_indirect_mapping_t *
vdev_indirect_mapping_open(spa_t *spa, objset_phys_t *os,
    uint64_t mapping_object)
{
 vdev_indirect_mapping_t *vim;
 vdev_indirect_mapping_phys_t *vim_phys;
 int rc;

 vim = calloc(1, sizeof (*vim));
 if (vim == ((void*)0))
  return (((void*)0));

 vim->vim_dn = calloc(1, sizeof (*vim->vim_dn));
 if (vim->vim_dn == ((void*)0)) {
  free(vim);
  return (((void*)0));
 }

 rc = objset_get_dnode(spa, os, mapping_object, vim->vim_dn);
 if (rc != 0) {
  free(vim->vim_dn);
  free(vim);
  return (((void*)0));
 }

 vim->vim_spa = spa;
 vim->vim_phys = malloc(sizeof (*vim->vim_phys));
 if (vim->vim_phys == ((void*)0)) {
  free(vim->vim_dn);
  free(vim);
  return (((void*)0));
 }

 vim_phys = (vdev_indirect_mapping_phys_t *)DN_BONUS(vim->vim_dn);
 *vim->vim_phys = *vim_phys;

 vim->vim_objset = os;
 vim->vim_object = mapping_object;
 vim->vim_entries = ((void*)0);

 vim->vim_havecounts =
     (vim->vim_dn->dn_bonuslen > VDEV_INDIRECT_MAPPING_SIZE_V0);
 return (vim);
}
