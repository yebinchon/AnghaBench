
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rbuf; } ;
typedef TYPE_1__ RECORD_LAYER ;


 scalar_t__ SSL3_BUFFER_get_left (int *) ;

int RECORD_LAYER_read_pending(const RECORD_LAYER *rl)
{
    return SSL3_BUFFER_get_left(&rl->rbuf) != 0;
}
