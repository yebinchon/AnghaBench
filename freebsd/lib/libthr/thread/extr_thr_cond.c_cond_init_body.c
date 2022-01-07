
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pthread_cond_attr {int c_clockid; scalar_t__ c_pshared; } ;
struct TYPE_2__ {int c_clockid; int c_flags; } ;
struct pthread_cond {TYPE_1__ kcond; } ;


 int CLOCK_REALTIME ;
 int USYNC_PROCESS_SHARED ;

__attribute__((used)) static void
cond_init_body(struct pthread_cond *cvp, const struct pthread_cond_attr *cattr)
{

 if (cattr == ((void*)0)) {
  cvp->kcond.c_clockid = CLOCK_REALTIME;
 } else {
  if (cattr->c_pshared)
   cvp->kcond.c_flags |= USYNC_PROCESS_SHARED;
  cvp->kcond.c_clockid = cattr->c_clockid;
 }
}
