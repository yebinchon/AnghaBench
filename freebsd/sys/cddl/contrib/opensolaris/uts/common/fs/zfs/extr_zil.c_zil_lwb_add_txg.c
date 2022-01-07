
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int lwb_max_txg; } ;
typedef TYPE_1__ lwb_t ;


 int MAX (int ,int ) ;

void
zil_lwb_add_txg(lwb_t *lwb, uint64_t txg)
{
 lwb->lwb_max_txg = MAX(lwb->lwb_max_txg, txg);
}
