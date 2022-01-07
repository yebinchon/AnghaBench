
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int DBG2 (char*) ;
 int dbgpid (int ) ;
 int inferior_ptid ;
 int lwp_to_thr (int ) ;

__attribute__((used)) static void
thr_infpid (void *unused)
{
  ptid_t ptid = lwp_to_thr (inferior_ptid);
  DBG2((" inferior_ptid from procfs: %s => %s",
 dbgpid (inferior_ptid), dbgpid (ptid)));
  inferior_ptid = ptid;
}
