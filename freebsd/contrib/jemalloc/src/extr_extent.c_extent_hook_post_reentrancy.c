
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int tsd_t ;


 int post_reentrancy (int *) ;
 int * tsd_fetch () ;
 scalar_t__ tsdn_null (int *) ;
 int * tsdn_tsd (int *) ;

__attribute__((used)) static void
extent_hook_post_reentrancy(tsdn_t *tsdn) {
 tsd_t *tsd = tsdn_null(tsdn) ? tsd_fetch() : tsdn_tsd(tsdn);
 post_reentrancy(tsd);
}
