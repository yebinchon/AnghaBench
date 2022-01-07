
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {scalar_t__ et_priv; } ;
struct epit_softc {int ctlreg; } ;


 int EPIT_CR ;
 int EPIT_SR ;
 int EPIT_SR_OCIF ;
 int WR4 (struct epit_softc*,int ,int ) ;
 int WR4B (struct epit_softc*,int ,int ) ;

__attribute__((used)) static int
epit_et_stop(struct eventtimer *et)
{
 struct epit_softc *sc;

 sc = (struct epit_softc *)et->et_priv;


 WR4(sc, EPIT_CR, sc->ctlreg);
 WR4B(sc, EPIT_SR, EPIT_SR_OCIF);

 return (0);
}
