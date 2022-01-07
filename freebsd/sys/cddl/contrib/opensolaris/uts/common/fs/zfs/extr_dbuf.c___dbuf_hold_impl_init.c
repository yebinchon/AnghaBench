
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct dbuf_hold_impl_data {int dh_depth; int * dh_dr; scalar_t__ dh_err; int * dh_bp; int * dh_parent; int * dh_db; int ** dh_dbp; void* dh_tag; void* dh_fail_uncached; void* dh_fail_sparse; int dh_blkid; int dh_level; int * dh_dn; } ;
typedef int dnode_t ;
typedef int dmu_buf_impl_t ;
typedef void* boolean_t ;



__attribute__((used)) static void
__dbuf_hold_impl_init(struct dbuf_hold_impl_data *dh,
    dnode_t *dn, uint8_t level, uint64_t blkid,
    boolean_t fail_sparse, boolean_t fail_uncached,
    void *tag, dmu_buf_impl_t **dbp, int depth)
{
 dh->dh_dn = dn;
 dh->dh_level = level;
 dh->dh_blkid = blkid;

 dh->dh_fail_sparse = fail_sparse;
 dh->dh_fail_uncached = fail_uncached;

 dh->dh_tag = tag;
 dh->dh_dbp = dbp;

 dh->dh_db = ((void*)0);
 dh->dh_parent = ((void*)0);
 dh->dh_bp = ((void*)0);
 dh->dh_err = 0;
 dh->dh_dr = ((void*)0);

 dh->dh_depth = depth;
}
