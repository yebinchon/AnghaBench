
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct thunder_pem_softc {int reg_bsh; int reg_bst; } ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int PEM_CFG_RD ;
 int PEM_CFG_RD_REG_ALIGN (int) ;
 int PEM_CFG_RD_REG_DATA (int ) ;
 int bus_space_barrier (int ,int ,int ,int,int) ;
 int bus_space_read_8 (int ,int ,int ) ;
 int bus_space_write_8 (int ,int ,int ,int ) ;

__attribute__((used)) static uint64_t
thunder_pem_config_reg_read(struct thunder_pem_softc *sc, int reg)
{
 uint64_t data;


 bus_space_write_8(sc->reg_bst, sc->reg_bsh, PEM_CFG_RD,
     PEM_CFG_RD_REG_ALIGN(reg));
 bus_space_barrier(sc->reg_bst, sc->reg_bsh, PEM_CFG_RD, 8,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);

 data = PEM_CFG_RD_REG_DATA(bus_space_read_8(sc->reg_bst, sc->reg_bsh,
     PEM_CFG_RD));

 return (data);
}
