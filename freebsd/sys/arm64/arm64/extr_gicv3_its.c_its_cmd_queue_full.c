
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_cmd {int dummy; } ;
struct gicv3_its_softc {int sc_its_cmd_next_idx; } ;


 int GITS_CREADR ;
 int ITS_CMDQ_SIZE ;
 int gic_its_read_4 (struct gicv3_its_softc*,int ) ;

__attribute__((used)) static inline bool
its_cmd_queue_full(struct gicv3_its_softc *sc)
{
 size_t read_idx, next_write_idx;


 next_write_idx = (sc->sc_its_cmd_next_idx + 1) %
     (ITS_CMDQ_SIZE / sizeof(struct its_cmd));

 read_idx = gic_its_read_4(sc, GITS_CREADR) / sizeof(struct its_cmd);





 return (next_write_idx == read_idx);
}
