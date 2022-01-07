
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int arenas_decay_ms_ctl_impl (int *,size_t const*,size_t,void*,size_t*,void*,size_t,int) ;

__attribute__((used)) static int
arenas_dirty_decay_ms_ctl(tsd_t *tsd, const size_t *mib, size_t miblen,
    void *oldp, size_t *oldlenp, void *newp, size_t newlen) {
 return arenas_decay_ms_ctl_impl(tsd, mib, miblen, oldp, oldlenp, newp,
     newlen, 1);
}
