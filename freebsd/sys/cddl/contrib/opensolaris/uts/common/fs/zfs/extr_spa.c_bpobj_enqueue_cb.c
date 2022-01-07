
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_tx_t ;
typedef int bpobj_t ;
typedef int blkptr_t ;


 int bpobj_enqueue (int *,int const*,int *) ;

__attribute__((used)) static int
bpobj_enqueue_cb(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
 bpobj_t *bpo = arg;
 bpobj_enqueue(bpo, bp, tx);
 return (0);
}
