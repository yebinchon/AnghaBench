
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* opaque; } ;
typedef TYPE_1__ evStreamID ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ evStream ;
typedef int evContext ;


 int EV_STR_TIMEROK ;
 int UNUSED (int ) ;

int
evUntimeRW(evContext opaqueCtx, evStreamID id) {
 evStream *str = id.opaque;

 UNUSED(opaqueCtx);

 str->flags &= ~EV_STR_TIMEROK;
 return (0);
}
