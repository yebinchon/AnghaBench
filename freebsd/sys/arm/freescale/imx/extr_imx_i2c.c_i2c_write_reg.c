
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_softc {int res; } ;
typedef int bus_size_t ;


 int bus_write_1 (int ,int ,int ) ;

__attribute__((used)) static __inline void
i2c_write_reg(struct i2c_softc *sc, bus_size_t off, uint8_t val)
{

 bus_write_1(sc->res, off, val);
}
