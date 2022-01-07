
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int t_Error ;
typedef int t_BmPortal ;
struct bm_rcr_entry {int dummy; } ;


 int ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_OK ;
 int UNUSED (int ) ;
 int XX_Sleep (int) ;
 struct bm_rcr_entry* try_rel_start (int *) ;

__attribute__((used)) static __inline__ t_Error wait_rel_start(t_BmPortal *p_BmPortal,
                                         struct bm_rcr_entry **rel,
                                         uint32_t flags)
{
    int tries = 100;

    UNUSED(flags);
    do {
        *rel = try_rel_start(p_BmPortal);
        XX_Sleep(1);
    } while (!*rel && --tries);

    if (!(*rel))
        return ERROR_CODE(E_BUSY);

    return E_OK;
}
