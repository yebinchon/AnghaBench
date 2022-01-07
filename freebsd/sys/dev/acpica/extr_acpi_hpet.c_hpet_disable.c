
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hpet_softc {int mem_res; } ;


 int HPET_CNF_ENABLE ;
 int HPET_CONFIG ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static void
hpet_disable(struct hpet_softc *sc)
{
 uint32_t val;

 val = bus_read_4(sc->mem_res, HPET_CONFIG);
 val &= ~HPET_CNF_ENABLE;
 bus_write_4(sc->mem_res, HPET_CONFIG, val);
}
