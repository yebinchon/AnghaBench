
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx6_anatop_softc {int dummy; } ;


 int FILTER_HANDLED ;
 int tempmon_goslow (struct imx6_anatop_softc*) ;

__attribute__((used)) static int
tempmon_intr(void *arg)
{
 struct imx6_anatop_softc *sc = arg;






 tempmon_goslow(sc);

 return (FILTER_HANDLED);
}
