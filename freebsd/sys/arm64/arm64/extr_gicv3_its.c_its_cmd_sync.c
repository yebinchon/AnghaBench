
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct its_cmd {int dummy; } ;
struct gicv3_its_softc {int sc_its_flags; } ;


 int ITS_FLAGS_CMDQ_FLUSH ;
 int cpu_dcache_wb_range (int ,int) ;
 int dsb (int ) ;
 int ishst ;

__attribute__((used)) static inline void
its_cmd_sync(struct gicv3_its_softc *sc, struct its_cmd *cmd)
{

 if ((sc->sc_its_flags & ITS_FLAGS_CMDQ_FLUSH) != 0) {

  cpu_dcache_wb_range((vm_offset_t)cmd, sizeof(*cmd));
 } else {

  dsb(ishst);
 }

}
