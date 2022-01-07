
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct aw_mmc_softc {TYPE_5__* aw_req; TYPE_3__* ccb; } ;
struct TYPE_10__ {TYPE_4__* cmd; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_6__ {int error; } ;
struct TYPE_7__ {TYPE_1__ cmd; } ;
struct TYPE_8__ {TYPE_2__ mmcio; } ;



__attribute__((used)) static inline void
set_mmc_error(struct aw_mmc_softc *sc, int error_code)
{



 sc->aw_req->cmd->error = error_code;

}
