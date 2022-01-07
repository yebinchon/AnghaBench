
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;
struct TYPE_6__ {int f_ksid; scalar_t__ f_idx; } ;
typedef TYPE_1__ fuid_domain_t ;
struct TYPE_7__ {scalar_t__ db_data; } ;
typedef TYPE_2__ dmu_buf_t ;
typedef int avl_tree_t ;


 int ASSERT (int) ;
 int DMU_READ_PREFETCH ;
 int FTAG ;
 int FUID_DOMAIN ;
 int FUID_IDX ;
 int FUID_NVP_ARRAY ;
 int KM_SLEEP ;
 int VERIFY (int) ;
 int avl_add (int *,TYPE_1__*) ;
 scalar_t__ dmu_bonus_hold (int *,scalar_t__,int ,TYPE_2__**) ;
 int dmu_buf_rele (TYPE_2__*,int ) ;
 scalar_t__ dmu_read (int *,scalar_t__,int ,scalar_t__,char*,int ) ;
 void* kmem_alloc (int,int ) ;
 int kmem_free (char*,scalar_t__) ;
 int ksid_lookupdomain (char*) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ nvlist_unpack (char*,scalar_t__,int **,int ) ;

uint64_t
zfs_fuid_table_load(objset_t *os, uint64_t fuid_obj, avl_tree_t *idx_tree,
    avl_tree_t *domain_tree)
{
 dmu_buf_t *db;
 uint64_t fuid_size;

 ASSERT(fuid_obj != 0);
 VERIFY(0 == dmu_bonus_hold(os, fuid_obj,
     FTAG, &db));
 fuid_size = *(uint64_t *)db->db_data;
 dmu_buf_rele(db, FTAG);

 if (fuid_size) {
  nvlist_t **fuidnvp;
  nvlist_t *nvp = ((void*)0);
  uint_t count;
  char *packed;
  int i;

  packed = kmem_alloc(fuid_size, KM_SLEEP);
  VERIFY(dmu_read(os, fuid_obj, 0,
      fuid_size, packed, DMU_READ_PREFETCH) == 0);
  VERIFY(nvlist_unpack(packed, fuid_size,
      &nvp, 0) == 0);
  VERIFY(nvlist_lookup_nvlist_array(nvp, FUID_NVP_ARRAY,
      &fuidnvp, &count) == 0);

  for (i = 0; i != count; i++) {
   fuid_domain_t *domnode;
   char *domain;
   uint64_t idx;

   VERIFY(nvlist_lookup_string(fuidnvp[i], FUID_DOMAIN,
       &domain) == 0);
   VERIFY(nvlist_lookup_uint64(fuidnvp[i], FUID_IDX,
       &idx) == 0);

   domnode = kmem_alloc(sizeof (fuid_domain_t), KM_SLEEP);

   domnode->f_idx = idx;
   domnode->f_ksid = ksid_lookupdomain(domain);
   avl_add(idx_tree, domnode);
   avl_add(domain_tree, domnode);
  }
  nvlist_free(nvp);
  kmem_free(packed, fuid_size);
 }
 return (fuid_size);
}
