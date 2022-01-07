
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_table {int flags; int * f; } ;


 int MON_AUTH ;
 int MON_PERMIT ;
 struct mon_table* mon_dispatch ;

__attribute__((used)) static void
monitor_permit_authentications(int permit)
{
 struct mon_table *ent = mon_dispatch;

 while (ent->f != ((void*)0)) {
  if (ent->flags & MON_AUTH) {
   ent->flags &= ~MON_PERMIT;
   ent->flags |= permit ? MON_PERMIT : 0;
  }
  ent++;
 }
}
