
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_11__ {int p_BmPortalLow; } ;
typedef TYPE_4__ t_BmPortal ;
struct TYPE_10__ {TYPE_2__* bufs; } ;
struct bm_mc_result {int verb; TYPE_3__ acquire; } ;
struct TYPE_8__ {int bpid; } ;
struct bm_mc_command {TYPE_1__ acquire; } ;
struct bm_buffer {int bpid; int lo; int hi; } ;
struct TYPE_9__ {int lo; int hi; } ;


 int ASSERT_COND (int) ;
 int BM_MCC_VERB_ACQUIRE_BUFCOUNT ;
 int BM_MCC_VERB_CMD_ACQUIRE ;
 int BM_MCR_VERB_ACQUIRE_BUFCOUNT ;
 int E_INVALID_HANDLE ;
 int NCSW_PLOCK (TYPE_4__*) ;
 int PUNLOCK (TYPE_4__*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_4__*,int ,int ) ;
 int bm_mc_commit (int ,int) ;
 struct bm_mc_result* bm_mc_result (int ) ;
 struct bm_mc_command* bm_mc_start (int ) ;

uint8_t BmPortalAcquire(t_Handle h_BmPortal,
                        uint8_t bpid,
                        struct bm_buffer *bufs,
                        uint8_t num)
{
    t_BmPortal *p_BmPortal = (t_BmPortal *)h_BmPortal;
    struct bm_mc_command *mcc;
    struct bm_mc_result *mcr;
    uint8_t ret = 0;

    SANITY_CHECK_RETURN_VALUE(p_BmPortal, E_INVALID_HANDLE, 0);
    NCSW_PLOCK(p_BmPortal);
    mcc = bm_mc_start(p_BmPortal->p_BmPortalLow);
    mcc->acquire.bpid = bpid;
    bm_mc_commit(p_BmPortal->p_BmPortalLow,
                 (uint8_t)(BM_MCC_VERB_CMD_ACQUIRE |
                           (num & BM_MCC_VERB_ACQUIRE_BUFCOUNT)));
    while (!(mcr = bm_mc_result(p_BmPortal->p_BmPortalLow))) ;
    ret = num = (uint8_t)(mcr->verb & BM_MCR_VERB_ACQUIRE_BUFCOUNT);
    ASSERT_COND(num <= 8);
    while (num--) {
        bufs[num].bpid = bpid;
        bufs[num].hi = mcr->acquire.bufs[num].hi;
        bufs[num].lo = mcr->acquire.bufs[num].lo;
    }
    PUNLOCK(p_BmPortal);
    return ret;
}
