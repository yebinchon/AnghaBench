
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_table {int type; int flags; int * f; } ;
typedef enum monitor_reqtype { ____Placeholder_monitor_reqtype } monitor_reqtype ;


 int MON_PERMIT ;

__attribute__((used)) static void
monitor_permit(struct mon_table *ent, enum monitor_reqtype type, int permit)
{
 while (ent->f != ((void*)0)) {
  if (ent->type == type) {
   ent->flags &= ~MON_PERMIT;
   ent->flags |= permit ? MON_PERMIT : 0;
   return;
  }
  ent++;
 }
}
