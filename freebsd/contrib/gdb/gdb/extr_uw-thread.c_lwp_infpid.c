
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int DBG2 (char*) ;
 int dbgpid (int ) ;
 int inferior_ptid ;
 int infpid_cleanup ;
 int make_cleanup (int ,int *) ;
 int null_ptid ;
 scalar_t__ ptid_equal (int ,int ) ;
 int thr_infpid ;
 int thr_to_lwp (int ) ;

__attribute__((used)) static int
lwp_infpid (void)
{
  ptid_t ptid = thr_to_lwp (inferior_ptid);
  DBG2((" inferior_ptid to procfs: %s => %s",
 dbgpid (inferior_ptid), dbgpid (ptid)));

  if (ptid_equal (ptid, null_ptid))
    return 0;

  inferior_ptid = ptid;
  infpid_cleanup = make_cleanup (thr_infpid, ((void*)0));
  return 1;
}
