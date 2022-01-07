
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_softc {int dummy; } ;


 int FILTER_HANDLED ;

__attribute__((used)) static int
port_intr(void *arg)
{
 struct port_softc *sc;

 sc = arg;

 return (FILTER_HANDLED);
}
