
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zy7_slcr_softc {int dummy; } ;


 int WR4 (struct zy7_slcr_softc*,int ,int ) ;
 int ZY7_SLCR_LOCK ;
 int ZY7_SLCR_LOCK_MAGIC ;

__attribute__((used)) static void
zy7_slcr_lock(struct zy7_slcr_softc *sc)
{


 WR4(sc, ZY7_SLCR_LOCK, ZY7_SLCR_LOCK_MAGIC);
}
