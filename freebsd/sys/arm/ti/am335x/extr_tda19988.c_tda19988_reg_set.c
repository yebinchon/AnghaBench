
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct tda19988_softc {int dummy; } ;


 int tda19988_reg_read (struct tda19988_softc*,int ,int *) ;
 int tda19988_reg_write (struct tda19988_softc*,int ,int ) ;

__attribute__((used)) static void
tda19988_reg_set(struct tda19988_softc *sc, uint16_t addr, uint8_t flags)
{
 uint8_t data;

 tda19988_reg_read(sc, addr, &data);
 data |= flags;
 tda19988_reg_write(sc, addr, data);
}
