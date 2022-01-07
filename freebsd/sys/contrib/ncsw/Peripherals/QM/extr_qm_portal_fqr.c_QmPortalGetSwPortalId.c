
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_LowQmPortal; } ;
typedef TYPE_3__ t_QmPortal ;
typedef scalar_t__ t_Handle ;
typedef int e_DpaaSwPortal ;
struct TYPE_4__ {int cpu; } ;
struct TYPE_5__ {TYPE_1__ config; } ;



__attribute__((used)) static e_DpaaSwPortal QmPortalGetSwPortalId(t_Handle h_QmPortal)
{
    t_QmPortal *p_QmPortal = (t_QmPortal *)h_QmPortal;

    return (e_DpaaSwPortal)p_QmPortal->p_LowQmPortal->config.cpu;
}
