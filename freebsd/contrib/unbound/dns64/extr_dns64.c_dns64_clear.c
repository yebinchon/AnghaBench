
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_qstate {int ** minfo; } ;



void
dns64_clear(struct module_qstate* qstate, int id)
{
    qstate->minfo[id] = ((void*)0);
}
