
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * msg_imprint; } ;
typedef TYPE_1__ TS_REQ ;
typedef int TS_MSG_IMPRINT ;



TS_MSG_IMPRINT *TS_REQ_get_msg_imprint(TS_REQ *a)
{
    return a->msg_imprint;
}
