
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ai_asid; } ;
typedef TYPE_1__ auditinfo_t ;
typedef int ai ;


 int ADE_NOERR ;
 int ADE_SETAUDIT ;
 int bzero (TYPE_1__*,int) ;
 int getpid () ;
 scalar_t__ setaudit (TYPE_1__*) ;

int
auditd_prevent_audit(void)
{
 auditinfo_t ai;
 bzero(&ai, sizeof(ai));
 ai.ai_asid = getpid();
 if (setaudit(&ai) != 0)
  return (ADE_SETAUDIT);
 return (ADE_NOERR);
}
