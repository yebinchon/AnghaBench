
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kc_arg; int (* kc_func ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ kb_callback; } ;
struct ckb_softc {int sc_flags; TYPE_2__ sc_kbd; int cols; int scan; } ;


 int CKB_FLAG_POLLING ;
 int EC_CMD_MKBP_STATE ;
 int KBDIO_KEYINPUT ;
 int ec_command (int ,int ,int ,int ,int ) ;
 int stub1 (TYPE_2__*,int ,int ) ;

void
ckb_ec_intr(void *arg)
{
 struct ckb_softc *sc;

 sc = arg;

 if (sc->sc_flags & CKB_FLAG_POLLING)
  return;

 ec_command(EC_CMD_MKBP_STATE, sc->scan, sc->cols,
     sc->scan, sc->cols);

 (sc->sc_kbd.kb_callback.kc_func) (&sc->sc_kbd, KBDIO_KEYINPUT,
     sc->sc_kbd.kb_callback.kc_arg);
}
