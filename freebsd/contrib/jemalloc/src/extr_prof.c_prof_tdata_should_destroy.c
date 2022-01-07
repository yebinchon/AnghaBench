
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ prof_tdata_t ;


 int malloc_mutex_assert_owner (int *,int ) ;
 int prof_tdata_should_destroy_unlocked (TYPE_1__*,int) ;

__attribute__((used)) static bool
prof_tdata_should_destroy(tsdn_t *tsdn, prof_tdata_t *tdata,
    bool even_if_attached) {
 malloc_mutex_assert_owner(tsdn, tdata->lock);

 return prof_tdata_should_destroy_unlocked(tdata, even_if_attached);
}
