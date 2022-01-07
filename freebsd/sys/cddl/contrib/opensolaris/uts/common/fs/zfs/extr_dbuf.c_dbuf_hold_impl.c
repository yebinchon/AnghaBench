
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct dbuf_hold_impl_data {int dummy; } ;
typedef int dnode_t ;
typedef int dmu_buf_impl_t ;
typedef int boolean_t ;


 int DBUF_HOLD_IMPL_MAX_DEPTH ;
 int KM_SLEEP ;
 int __dbuf_hold_impl (struct dbuf_hold_impl_data*) ;
 int __dbuf_hold_impl_init (struct dbuf_hold_impl_data*,int *,int ,int ,int ,int ,void*,int **,int ) ;
 struct dbuf_hold_impl_data* kmem_alloc (int,int ) ;
 int kmem_free (struct dbuf_hold_impl_data*,int) ;

int
dbuf_hold_impl(dnode_t *dn, uint8_t level, uint64_t blkid,
    boolean_t fail_sparse, boolean_t fail_uncached,
    void *tag, dmu_buf_impl_t **dbp)
{
 struct dbuf_hold_impl_data *dh;
 int error;

 dh = kmem_alloc(sizeof (struct dbuf_hold_impl_data) *
     DBUF_HOLD_IMPL_MAX_DEPTH, KM_SLEEP);
 __dbuf_hold_impl_init(dh, dn, level, blkid, fail_sparse,
     fail_uncached, tag, dbp, 0);

 error = __dbuf_hold_impl(dh);

 kmem_free(dh, sizeof (struct dbuf_hold_impl_data) *
     DBUF_HOLD_IMPL_MAX_DEPTH);

 return (error);
}
