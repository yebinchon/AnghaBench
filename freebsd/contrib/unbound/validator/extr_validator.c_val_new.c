
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_qstate {int state; } ;
struct module_qstate {struct val_qstate** minfo; int region; } ;


 int VAL_INIT_STATE ;
 int log_assert (int) ;
 int memset (struct val_qstate*,int ,int) ;
 scalar_t__ regional_alloc (int ,int) ;
 struct val_qstate* val_new_getmsg (struct module_qstate*,struct val_qstate*) ;

__attribute__((used)) static struct val_qstate*
val_new(struct module_qstate* qstate, int id)
{
 struct val_qstate* vq = (struct val_qstate*)regional_alloc(
  qstate->region, sizeof(*vq));
 log_assert(!qstate->minfo[id]);
 if(!vq)
  return ((void*)0);
 memset(vq, 0, sizeof(*vq));
 qstate->minfo[id] = vq;
 vq->state = VAL_INIT_STATE;
 return val_new_getmsg(qstate, vq);
}
