
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_vstate_t ;
struct TYPE_4__ {int * dten_vstate; } ;
typedef TYPE_1__ dtrace_enabling_t ;


 int KM_SLEEP ;
 TYPE_1__* kmem_zalloc (int,int ) ;

__attribute__((used)) static dtrace_enabling_t *
dtrace_enabling_create(dtrace_vstate_t *vstate)
{
 dtrace_enabling_t *enab;

 enab = kmem_zalloc(sizeof (dtrace_enabling_t), KM_SLEEP);
 enab->dten_vstate = vstate;

 return (enab);
}
