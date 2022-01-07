
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct twl_clks_softc {int sc_pdev; } ;
struct twl_clk_entry {scalar_t__ reg_off; int sub_dev; } ;


 int twl_read (int ,int ,scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static inline int
twl_clks_read_1(struct twl_clks_softc *sc, struct twl_clk_entry *clk,
 uint8_t off, uint8_t *val)
{
 return (twl_read(sc->sc_pdev, clk->sub_dev, clk->reg_off + off, val, 1));
}
