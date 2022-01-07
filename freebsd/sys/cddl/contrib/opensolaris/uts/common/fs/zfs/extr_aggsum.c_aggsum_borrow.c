
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct aggsum_bucket {int asc_lock; int asc_borrowed; } ;
typedef int int64_t ;
struct TYPE_4__ {int as_lock; int as_lower_bound; int as_upper_bound; } ;
typedef TYPE_1__ aggsum_t ;


 int aggsum_flush_bucket (TYPE_1__*,struct aggsum_bucket*) ;
 int atomic_add_64 (int volatile*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
aggsum_borrow(aggsum_t *as, int64_t delta, struct aggsum_bucket *asb)
{
 int64_t abs_delta = (delta < 0 ? -delta : delta);
 mutex_enter(&as->as_lock);
 mutex_enter(&asb->asc_lock);

 aggsum_flush_bucket(as, asb);

 atomic_add_64((volatile uint64_t *)&as->as_upper_bound, abs_delta);
 atomic_add_64((volatile uint64_t *)&as->as_lower_bound, -abs_delta);
 asb->asc_borrowed = abs_delta;

 mutex_exit(&asb->asc_lock);
 mutex_exit(&as->as_lock);
}
