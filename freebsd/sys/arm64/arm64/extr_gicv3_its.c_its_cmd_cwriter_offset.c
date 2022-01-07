
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct its_cmd {int dummy; } ;
struct gicv3_its_softc {struct its_cmd* sc_its_cmd_base; } ;



__attribute__((used)) static inline uint64_t
its_cmd_cwriter_offset(struct gicv3_its_softc *sc, struct its_cmd *cmd)
{
 uint64_t off;

 off = (cmd - sc->sc_its_cmd_base) * sizeof(*cmd);

 return (off);
}
