
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int MIB_UNSIGNED (unsigned int,int) ;
 int READONLY () ;
 int WRITEONLY () ;
 int arena_i_decay (int ,unsigned int,int) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static int
arena_i_purge_ctl(tsd_t *tsd, const size_t *mib, size_t miblen, void *oldp,
    size_t *oldlenp, void *newp, size_t newlen) {
 int ret;
 unsigned arena_ind;

 READONLY();
 WRITEONLY();
 MIB_UNSIGNED(arena_ind, 1);
 arena_i_decay(tsd_tsdn(tsd), arena_ind, 1);

 ret = 0;
label_return:
 return ret;
}
