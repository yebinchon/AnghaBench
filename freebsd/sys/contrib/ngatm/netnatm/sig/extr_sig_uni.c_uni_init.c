
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni {int cref_alloc; void* glob_respond; void* glob_start; int custat; scalar_t__ working; } ;


 int CU_STAT0 ;
 void* UNI_CALLSTATE_REST0 ;

__attribute__((used)) static void
uni_init(struct uni *uni)
{
 uni->working = 0;
 uni->cref_alloc = 12;
 uni->custat = CU_STAT0;
 uni->glob_start = UNI_CALLSTATE_REST0;
 uni->glob_respond = UNI_CALLSTATE_REST0;
}
