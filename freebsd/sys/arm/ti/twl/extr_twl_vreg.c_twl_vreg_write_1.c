
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct twl_vreg_softc {int sc_pdev; } ;
struct twl_regulator_entry {scalar_t__ reg_off; int sub_dev; } ;


 int twl_write (int ,int ,scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static inline int
twl_vreg_write_1(struct twl_vreg_softc *sc, struct twl_regulator_entry *regulator,
 uint8_t off, uint8_t val)
{
 return (twl_write(sc->sc_pdev, regulator->sub_dev,
     regulator->reg_off + off, &val, 1));
}
