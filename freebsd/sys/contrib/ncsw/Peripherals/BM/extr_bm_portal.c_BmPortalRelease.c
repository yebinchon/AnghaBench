
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
typedef scalar_t__ t_Error ;
typedef int t_BmPortal ;
struct bm_rcr_entry {size_t bpid; TYPE_1__* bufs; } ;
struct bm_buffer {int lo; int hi; } ;
struct TYPE_2__ {int lo; int hi; } ;


 int ASSERT_COND (int ) ;
 int BMAN_RELEASE_FLAG_WAIT ;
 scalar_t__ ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_INVALID_HANDLE ;
 scalar_t__ E_OK ;
 int SANITY_CHECK_RETURN_ERROR (int *,int ) ;
 int rel_commit (int *,int,size_t) ;
 struct bm_rcr_entry* try_rel_start (int *) ;
 scalar_t__ wait_rel_start (int *,struct bm_rcr_entry**,int) ;

t_Error BmPortalRelease(t_Handle h_BmPortal,
                        uint8_t bpid,
                        struct bm_buffer *bufs,
                        uint8_t num,
                        uint32_t flags)
{
    t_BmPortal *p_BmPortal = (t_BmPortal *)h_BmPortal;
    struct bm_rcr_entry *r;
    uint8_t i;

    SANITY_CHECK_RETURN_ERROR(p_BmPortal, E_INVALID_HANDLE);

    r = try_rel_start(p_BmPortal);
    if (!r) {
        if (flags & BMAN_RELEASE_FLAG_WAIT) {
            t_Error ret = wait_rel_start(p_BmPortal, &r, flags);
            if (ret)
                return ret;
        } else
            return ERROR_CODE(E_BUSY);
        ASSERT_COND(r != ((void*)0));
    }
    r->bpid = bpid;
    for (i = 0; i < num; i++) {
        r->bufs[i].hi = bufs[i].hi;
        r->bufs[i].lo = bufs[i].lo;
    }





    rel_commit(p_BmPortal, flags, num);
    return E_OK;
}
