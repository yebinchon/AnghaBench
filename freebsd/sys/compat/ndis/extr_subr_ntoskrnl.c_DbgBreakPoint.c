
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_WHY_NDIS ;
 int kdb_enter (int ,char*) ;

__attribute__((used)) static void
DbgBreakPoint(void)
{

 kdb_enter(KDB_WHY_NDIS, "DbgBreakPoint(): breakpoint");
}
