
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int register_t ;
typedef int bus_dmasync_op_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int arm_dcache_align ;
 int arm_dcache_align_mask ;
 int cpu_dcache_inv_range (int,int) ;
 int cpu_dcache_wb_range (int,int) ;
 int cpu_dcache_wbinv_range (int,int) ;
 int cpu_l2cache_inv_range (int,int) ;
 int cpu_l2cache_wb_range (int,int) ;
 int cpu_l2cache_wbinv_range (int,int) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int memcpy (void*,char*,int) ;

__attribute__((used)) static void
bus_dmamap_sync_buf(vm_offset_t buf, int len, bus_dmasync_op_t op,
    int bufaligned)
{
 char _tmp_cl[arm_dcache_align], _tmp_clend[arm_dcache_align];
 register_t s;
 int partial;

 if ((op & BUS_DMASYNC_PREWRITE) && !(op & BUS_DMASYNC_PREREAD)) {
  cpu_dcache_wb_range(buf, len);
  cpu_l2cache_wb_range(buf, len);
 }
 partial = (((vm_offset_t)buf) | len) & arm_dcache_align_mask;

 if (op & BUS_DMASYNC_PREREAD) {
  if (!(op & BUS_DMASYNC_PREWRITE) && !partial) {
   cpu_dcache_inv_range(buf, len);
   cpu_l2cache_inv_range(buf, len);
  } else {
       cpu_dcache_wbinv_range(buf, len);
       cpu_l2cache_wbinv_range(buf, len);
  }
 }
 if (op & BUS_DMASYNC_POSTREAD) {
  if (partial && !bufaligned) {
   s = intr_disable();
   if (buf & arm_dcache_align_mask)
    memcpy(_tmp_cl, (void *)(buf &
        ~arm_dcache_align_mask),
        buf & arm_dcache_align_mask);
   if ((buf + len) & arm_dcache_align_mask)
    memcpy(_tmp_clend,
        (void *)(buf + len),
        arm_dcache_align -
        ((buf + len) & arm_dcache_align_mask));
  }
  cpu_dcache_inv_range(buf, len);
  cpu_l2cache_inv_range(buf, len);
  if (partial && !bufaligned) {
   if (buf & arm_dcache_align_mask)
    memcpy((void *)(buf &
        ~arm_dcache_align_mask), _tmp_cl,
        buf & arm_dcache_align_mask);
   if ((buf + len) & arm_dcache_align_mask)
    memcpy((void *)(buf + len),
        _tmp_clend, arm_dcache_align -
        ((buf + len) & arm_dcache_align_mask));
   intr_restore(s);
  }
 }
}
