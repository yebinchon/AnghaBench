
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * msg_imprint; } ;
typedef TYPE_1__ TS_REQ ;
typedef int TS_MSG_IMPRINT ;


 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_REQ_SET_MSG_IMPRINT ;
 int * TS_MSG_IMPRINT_dup (int *) ;
 int TS_MSG_IMPRINT_free (int *) ;
 int TSerr (int ,int ) ;

int TS_REQ_set_msg_imprint(TS_REQ *a, TS_MSG_IMPRINT *msg_imprint)
{
    TS_MSG_IMPRINT *new_msg_imprint;

    if (a->msg_imprint == msg_imprint)
        return 1;
    new_msg_imprint = TS_MSG_IMPRINT_dup(msg_imprint);
    if (new_msg_imprint == ((void*)0)) {
        TSerr(TS_F_TS_REQ_SET_MSG_IMPRINT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    TS_MSG_IMPRINT_free(a->msg_imprint);
    a->msg_imprint = new_msg_imprint;
    return 1;
}
