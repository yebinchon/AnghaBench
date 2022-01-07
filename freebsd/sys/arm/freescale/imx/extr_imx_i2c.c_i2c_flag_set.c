
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_softc {int dummy; } ;
typedef int bus_size_t ;


 int i2c_read_reg (struct i2c_softc*,int ) ;
 int i2c_write_reg (struct i2c_softc*,int ,int ) ;

__attribute__((used)) static __inline void
i2c_flag_set(struct i2c_softc *sc, bus_size_t off, uint8_t mask)
{
 uint8_t status;

 status = i2c_read_reg(sc, off);
 status |= mask;
 i2c_write_reg(sc, off, status);
}
