
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct epit_softc {int dummy; } ;


 int EPIT_CNR ;
 scalar_t__ RD4 (struct epit_softc*,int ) ;

__attribute__((used)) static u_int
epit_read_counter(struct epit_softc *sc)
{





 return (0xffffffff - RD4(sc, EPIT_CNR));
}
