
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qctrl ;
struct TYPE_4__ {scalar_t__ aq_minfree; } ;
typedef TYPE_1__ au_qctrl_t ;


 int ADE_AUDITON ;
 int ADE_PARSE ;
 scalar_t__ audit_get_qctrl (TYPE_1__*,int) ;
 scalar_t__ audit_set_qctrl (TYPE_1__*,int) ;
 scalar_t__ auditd_minval ;
 scalar_t__ getacmin (scalar_t__*) ;

int
auditd_set_minfree(void)
{
 au_qctrl_t qctrl;

 if (getacmin(&auditd_minval) != 0)
  return (ADE_PARSE);

 if (audit_get_qctrl(&qctrl, sizeof(qctrl)) != 0)
  return (ADE_AUDITON);

 if (qctrl.aq_minfree != auditd_minval) {
  qctrl.aq_minfree = auditd_minval;
  if (audit_set_qctrl(&qctrl, sizeof(qctrl)) != 0)
   return (ADE_AUDITON);
 }

 return (0);
}
