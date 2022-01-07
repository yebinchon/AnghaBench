
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_mbox_softc {int dummy; } ;


 int DPRINTF (char*,struct ti_mbox_softc*) ;

__attribute__((used)) static void
ti_mbox_intr(void *arg)
{
 struct ti_mbox_softc *sc;

 sc = arg;
 DPRINTF("interrupt %p", sc);
}
