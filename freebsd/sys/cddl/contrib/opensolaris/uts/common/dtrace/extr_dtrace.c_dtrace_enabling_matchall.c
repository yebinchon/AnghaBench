
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* dten_vstate; struct TYPE_10__* dten_next; } ;
typedef TYPE_4__ dtrace_enabling_t ;
typedef int cred_t ;
struct TYPE_9__ {TYPE_2__* dtvs_state; } ;
struct TYPE_7__ {int * dcr_cred; } ;
struct TYPE_8__ {TYPE_1__ dts_cred; } ;


 scalar_t__ INGLOBALZONE (int ) ;
 int cpu_lock ;
 scalar_t__ crgetzoneid (int *) ;
 int curproc ;
 int dtrace_enabling_match (TYPE_4__*,int *) ;
 int dtrace_lock ;
 TYPE_4__* dtrace_retained ;
 scalar_t__ getzoneid () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
dtrace_enabling_matchall(void)
{
 dtrace_enabling_t *enab;

 mutex_enter(&cpu_lock);
 mutex_enter(&dtrace_lock);
 for (enab = dtrace_retained; enab != ((void*)0); enab = enab->dten_next) {






   (void) dtrace_enabling_match(enab, ((void*)0));
 }

 mutex_exit(&dtrace_lock);
 mutex_exit(&cpu_lock);
}
